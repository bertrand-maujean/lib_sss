## Synopsis
**lib_sss** is a low-level library to implement Shamir's Secret Sharing Scheme. It can be used to share between several persons a secret password, a secret key.

One or a few "parts of the secret" are given to each of several users. When combining together a minimum number of parts, they can reconstruct the secret. When too few parts are given, the secret is not available. This property is often called **quorum** sharing.

The limit when the secret can be recovered is called the **threshold**.

The Shamir Secret Sharing Scheme is much stronger than giving a half of the password to each person.
See : https://en.wikipedia.org/wiki/Shamir%27s_Secret_Sharing

-----------
## Mathematical background
Calculation is done in the finite Galois Field GF(2^bits), using some specific low level arithmetic primitives.
A static set of irreducible polynomials is included to "create" field GF(2^n) from the ring F2[X]
Thus the bit width must correspond to the degree of an available irreducible polynomial. It implies the length of sharable secret.
Degrees 8..10000 are available, but you are invited to only include those that will be really used.
It is possible to generate as many parts as wanted.

A part is composed of two coordinates of a point in the space (GF(2^n) )^2
- the X-coordinate called 'xpart' that is simply an uint64_t. In fact, it's a element of GF(2^n), but choosen with a small value that fits in an unique uint64_t
- the Y-coordinate, that is a element of GF(2^n) of whole size. It is an array of uint64_t

This is the information that every 'share holder' must retain.

----------
## Motivation
This cryptographic system is worthy to handle a residual secret, for example password to a generic privileged account in case of emergency.
lib_sss was written to have a really strong implementation, not limited by the size of integers type in a high level language.
The implementation permit to adapt the secret length to other cryptographic functions :
- 256 bits secrets are suitable for use in an AES cipher
- 1024-8192 secrets are possible, notably for handling asymmetric keys
- as the lib_sss can handle more than 9000 bits, it is possible to handle some messages directly (but it's not the best way, consider using a indirect crypto scheme, with an intermediate symmetric cipher like AES)

---------

## Sanity, tamper proof, security by design
- Execution is valdgrind-sane (test program)
- Some canary values are added in the "context" struct, but it is for bug detection rather than armoring the code. Nevertheless, I decided to let them in place.
- Most of the memory used is zeroed after used, in order to avoid some side channel attacks.
- When designing a real security system, you should consider some good practices to avoid information stealing : preventing core dump, preventing debugging, handling hibernation file, carefully review where and how secret information is stored... The lib_sss itself will not do this for you.
- The lib might be vulnerable to timing attacks. You are invited not to expose the execution time.
- The lib can use an external callback to provide random bytes. By default, it uses 'rand()' function, which is not cryptographically safe. You should use a correct random generator. Random data is used when loading a secret for splitting. 
- The API function are not designed to directly receive external user input. So consider some sanity check of values fitted in the API calls.



--------------
## Code design
- A secret or a secret part is represented as a element of GF(2^n), which is internally represented by an array of uint64_t. 'n' is the maximum bit width of a representable secret or part. Secrets and parts are of same width, but 'parts' are numerous and each with an additional 'xpart'.  
- When using the functions to load and store secrets and parts, secret and parts are exchanged by byte array provided by the user. Byte string are copied into/from context.
- a 'context' is malloc()ed in 'lsss_new()' and free()d in 'lsss_free()'. There is no other heap use.
- If you are using a gcc build environment, on an Intel X64 architecture, you can '#define LSSS_GCC_ASSEMBLY'. This will trigger compilation of X64 assembly-optimized code for a very few and very inner arithmetic functions, and multiply by around 3 the speed of calculations (in respect of C only version)
- Code has not been tested in 32 bits compilation. But if you are not using assembly optimization, it should work
- Code has not been tested in big-endian system. It' been design on Intel / little-endian. May works... 
- Lib should be thread-safe (but not tested, only attention point is the static variable containing random generator callback). It's not multithreaded itself.
- lib_sss aims to be standalone with no/few dependencies. Thus, it does not use an external multiprecision library (no GMP use)
- The library has not been tested when bit width is not a multiple of 8. You are advised to round up your secret length to a byte or a even qword boundary.


-------------
## API reference
*lib_sss* gives a data type to handle "context". You initialize it giving the bits size of the data (the secret and the parts), and the threshold.
Some error conditions are defined (see .h), and some functions can return theses error codes (see functions).

```
// API errors 
#define LSSS_ERR_NOERR 0 /* everything is fine */
#define LSSS_ERR_NOMEM 1 /* Error on malloc() */
#define LSSS_ERR_NOPOLY 2 /* no irreductible polynomial of requested degree */
#define LSSS_ERR_PARTS_INCONSISTENT 2 /* Given parts do not define a polynomial. Matrix rank issue. A part is corrupted */
#define LSSS_ERR_MANY_PARTS 3 /* Too many parts have already been loaded */
#define LSSS_ERR_FEW_PARTS 4 /* lsss_combine() called before loading enough parts */
#define LSSS_ERR_PART_TWICE 5 /* try to load the same part twice */

// API functions
lsss_ctx *lsss_new(int bits, int thresh, int *err);
void lsss_free(lsss_ctx *ctx);
void lsss_set_secret(lsss_ctx *ctx, void *secret);
void lsss_get_part(lsss_ctx *ctx, void *part, uint64_t number);
int lsss_set_part(lsss_ctx *ctx, void *part, uint64_t number);
int lsss_missing_parts(lsss_ctx *ctx);
int lsss_combine(lsss_ctx *ctx);
void lsss_get_secret(lsss_ctx *ctx, void *secret);
void lsss_register_random_source(lsss_random_source_t);
```

### If you want to split a secret :
1/ decide a bits length wide enough to represent the secret, and a threshold
2/ create a context lsss_ctx *lsss_new(int bits, int thresh, int *err)
3/ tell the secret : void lsss_set_secret(lsss_ctx *ctx, void *secret)
4/ Generate as many parts as you want : void lsss_get_part(lsss_ctx *ctx, void *part, uint64_t number)
   Beware to generate more parts than threshold of course.
   When generating a part, you have to provide a counting or random "number" which is the x-coordinate (see Wiki math explanation)
   Some implementations will use 1,2,..., or you can use random number. But every secret x-part must be different.
   You can not use 0 as a part number (as x=0 is the secret itself)
5/ Dispose of the context void lsss_free(lsss_ctx *ctx);

### If you want to recombine a secret :
1/ You must know the bits width and threshold value
2/ create a context lsss_ctx *lsss_new(int bits, int thresh, int *err);
3/ Load "threshold" distinct parts int lsss_set_part(lsss_ctx *ctx, void *part, uint64_t number
   int lsss_missing_parts(lsss_ctx *ctx); tells you if you have loaded enough parts
4/ invoke int lsss_combine(lsss_ctx *ctx);
5/ retrieve the combined secret : void lsss_get_secret(lsss_ctx *ctx, void *secret);
6/ Dispose of the context void lsss_free(lsss_ctx *ctx);

### 'Recoeff' option :
If you have to recombine a secret, but want to later generate additional parts, you have to set the context 'recoef' property to "true" (boolean type, using stdbool.h). This must be done before calling lsss_combine().

This will trigger the complete resolution of a linear equations system. When not needed, the resolution is stopped as soon as the secret is recovered, and for long secret/high threshold, it can spare some time.

### Documentation :
- This file
- The Doxygen-automated doc in doc/ directory
- The source code
- The demo.c program


------------
## Building
Just use 'make', 'make test', 'make demo'
.so and .a files are generated along with .o, but you have to copy them where you need. 
As this lib is tiny and highly specific, you would probably prefer static linking. As you like...

Feel free to remove the '-g' flag in Makefile, if you do not want to have debugging information.

**Note on the 'irred_f2x.c' file** : this file contains constant information of an irreducible polynomial of each degree from 8 to 10000. 
Feel free to prune it according to your needs. For example, if you are only using 256 bits secrets (for example, in a cryptographic scheme involving SHA-2 and AES-256), you can retain only one record (format of the data structure is explained at the beginning of the file).


-----------
## Tests and performance
Testing program 'test.c' is provided. It works in to stages :
- Performance test, giving a CSV array of performance results 
- Consistency test, testing a big number a split/combine operation on various size to try to trigger a fault
In case of fault, the test program abort. But it should not.

Generation time is much lesser than recombination time. For secrets of size 256-1024, the processing time should always be compatible with most applications. For a 8192 bits secret, shared in 10 parts, recombination time is 7~8 seconds (on my computer)
In testing program, 'recoeff' option is turned on.
Processing time is roughly proportional to the square of bit length and the square of parts threshold.


--------------

## Example application : demo.c
This demo application let you share then recombine a small secret on the command line.
### Command line syntax :
```
$ ./demo
Too few arguments given
demo -t <threshold> -b <bits width> [-p <parts #;parts b64>] [-p other part] [-s <secret>]
                -g <n>

        -t : threshold. Number of parts needed to recover the secret
        -b : Width of secret and parts, in bits. To encode an 8-bytes secret, use 64 bits
        -p : part given. Used a ';' between x-part (in decimal) and y-part, and no space in between
        -s : give the secret (imply splitting operation)
        -g : number of parts to generate

If '-s' option is given, splitting mode is implied, else recombination
'-g' can be used in recombination mode, to generate additional parts

See README.md file for more documentation
Copyright (C) 2019 Bertrand MAUJEAN, released under AGPL. See LICENSE.txt
```

### Generating parts :
```
$ ./demo -b 160 -t 4 -g 6 -s "machin bidule truc"
Emitting 6 parts for 'machin bidule truc' secret, with a 4 threshold value and a 160 bits width
1;XtVdwQnQyL91bE8p4cOEm9oP4OU=
2;1ywE4tT/WV4zWB6RvYMn/2BBnfQ=
3;V5lkfWAWbZWPSdJBDpzDJmzdkXE=
4;z3BdoPLaxDLSUWZCMscG08gCMZk=
5;e8GnvGqU5ZkODGh7ByyMmq1Nuz4=
6;mjDKmO71X7iIoL0QVoXy3sSly2o=
```
### Recombining the secret :
```
$ ./demo -b 160 -t 4 -p "3;V5lkfWAWbZWPSdJBDpzDJmzdkXE=" -p "4;z3BdoPLaxDLSUWZCMscG08gCMZk=" -p "5;e8GnvGqU5ZkODGh7ByyMmq1Nuz4=" -p "6;mjDKmO71X7iIoL0QVoXy3sSly2o="
Secret is :
machin bidule truc
```

See the code as part of the API documentation.

-------------
## TODO
Writing some bindings for Python and PHP... 


--------------------

## Contributors, credits
- lib_sss was inspired from : http://point-at-infinity.org/ssss/
- Thanks to Lagrange for his theorem about existence and unicity of a polynomial passing in n points
- And thanks to Shamir for remarking we can use it this way.



--------------------

## Licence
This work is released under 
**GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007** 
by
**Bertrand Maujean** 
See : http://www.gnu.org/licenses/agpl.html and file LICENSE.txt in distribution folder.

