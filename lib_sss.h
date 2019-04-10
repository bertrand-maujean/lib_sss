/*  lib_sss
    Copyright (C) 2019 Bertrand MAUJEAN

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You have received a copy of the GNU Affero General Public License
    in the LICENSE.txt file along with this program.
	If you can not found it,  see <https://www.gnu.org/licenses/>.
*/

/**
\file lib_sss.h
\brief Definition of API types, defines and functions

*/



#ifndef HAVE_LIB_SSS_H
#define HAVE_LIB_SSS_H


#ifdef __cplusplus
extern "C" {
#endif

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>



#ifdef __linux__
#include <alloca.h>
#endif
#ifdef _WIN64
#include <windows.h>
#include <malloc.h>
#endif

typedef uint64_t lsss_z;

typedef void *(*lsss_random_source_t)(void *, size_t);

typedef struct lsss_ctx lsss_ctx;
struct lsss_ctx {
	/** 
	\struct lsss_ctx 
	\brief Memory structure that instantiate the sharing of a secret
	Can be use for both spliting and combining, thought not all memory parts are used in the two cases
	*/
	uint64_t canary1;
	size_t meml;	///< Total memory malloc()'ed for this context
	int bits;	///< Number of bits in the elements. Calculation are done in GF(2^bits). The choosen irreductible polynomial from F2[X] is of degree bits+1
	int thresh;	///< threshold for releasing the secret. This is the degre of the choosen polynomial from GF(2^n)[X]
	int size;	///< size of the elements in qwords. bits < (64*size+1)
	int nparts;	///< NUmber of parts loaded before combining. When it reach 'thresh', it is ok to combine.
	bool recoef;    ///< Est ce qu'on demande à recalculer les coeffs après combine, pour éventuellement réemmettre d'autres parts
	
	uint64_t canary2;
	uint64_t *canary3;
	
	lsss_z *coeffs;	///< Coefficients of the polynomial of the secret. Allocated in the present structure. 'thresh' items. coeffs[0] being the secret iteself
	lsss_z *parts;	///< Parts of secret, only 'thresh' items. Used at combining only, you can generate more parts at will.
	uint64_t *xparts; ///< x-coordinates corresponding to secret parts, usualy 1..N, 0 is for the secret itself
	lsss_z *base;	///< Base polynomial for defining GF(2^n)
		
	// Additional data will be here in the malloc()ed block, but not structured
};

// random value too load canaries 
#define LSSS_CANARY_CONST 0xbf5c310e2ab3e77b

// Use assembly for inner functions optimization
#define LSSS_GCC_ASSEMBLY

#if defined(_WIN64) && defined(LSSS_GCC_ASSEMBLY)
#undef LSSS_GCC_ASSEMBLY
#endif



// API errors 
#define LSSS_ERR_NOERR 0 /* everything is fine */
#define LSSS_ERR_NOMEM 1 /* Error on malloc() */
#define LSSS_ERR_NOPOLY 2 /* no irreductible polynomial of requested degree */
#define LSSS_ERR_MANY_PARTS 3 /* Too many parts have already been loaded */
#define LSSS_ERR_FEW_PARTS 4 /* lsss_combine() called before loading enough parts */
#define LSSS_ERR_PART_TWICE 5 /* try to load the same part twice */
#define LSSS_ERR_PARTS_INCONSISTENT 6 /* Given parts do not define a polynomial. Matrix rank issue. A part is corrupted */


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




#ifdef __cplusplus
}
#endif

#endif // ifndef HAVE_LIB_SSS_H
