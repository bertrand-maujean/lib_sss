# 1 "test.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "test.c"
# 24 "test.c"
# 1 "lib_sss.h" 1
# 35 "lib_sss.h"
# 1 "/home/ber/tis-kernel-master/share/libc/stdbool.h" 1 3 4
# 36 "lib_sss.h" 2
# 1 "/home/ber/tis-kernel-master/share/libc/stdint.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/stdint.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_machdep.h" 1 3 4
# 80 "/home/ber/tis-kernel-master/share/libc/__fc_machdep.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_machdep_linux_gcc_shared.h" 1 3 4
# 81 "/home/ber/tis-kernel-master/share/libc/__fc_machdep.h" 2 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/stdint.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/features.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/stdint.h" 2 3 4






# 44 "/home/ber/tis-kernel-master/share/libc/stdint.h" 3 4
typedef signed char int8_t;


typedef unsigned char uint8_t;


typedef signed short int16_t;


typedef unsigned short uint16_t;


typedef signed int int32_t;


typedef unsigned int uint32_t;


typedef signed long int64_t;


typedef unsigned long uint64_t;



typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef signed short int_least16_t;
typedef unsigned short uint_least16_t;
typedef signed int int_least32_t;
typedef unsigned int uint_least32_t;
typedef signed long long int_least64_t;
typedef unsigned long long uint_least64_t;


typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef signed int int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;


# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_intptr_t.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/__fc_define_intptr_t.h" 3 4



typedef signed long intptr_t;



# 90 "/home/ber/tis-kernel-master/share/libc/stdint.h" 2 3 4


typedef unsigned long uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 122 "/home/ber/tis-kernel-master/share/libc/stdint.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_wchar_limits.h" 1 3 4
# 123 "/home/ber/tis-kernel-master/share/libc/stdint.h" 2 3 4
# 144 "/home/ber/tis-kernel-master/share/libc/stdint.h" 3 4

# 37 "lib_sss.h" 2
# 1 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_size_t.h" 1 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/__fc_define_size_t.h" 3 4

typedef unsigned long size_t;

# 38 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_wchar_t.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/__fc_define_wchar_t.h" 3 4
typedef int wchar_t;
# 39 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_quad_t.h" 1 3 4
# 16 "/home/ber/tis-kernel-master/share/libc/__fc_define_quad_t.h" 3 4

typedef unsigned long u_quad_t;
typedef signed long quad_t;
typedef quad_t *qaddr_t;

# 40 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4




typedef struct __fc_div_t {
  int quot;
  int rem;
} div_t;
typedef struct __fc_ldiv_t {
  long int quot;
  long int rem;
} ldiv_t;

typedef struct __fc_lldiv_t {
  long long int quot;
  long long int rem;
} lldiv_t;

# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_null.h" 1 3 4
# 59 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4





# 1 "/home/ber/tis-kernel-master/share/libc/limits.h" 1 3 4
# 65 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4





double atof(const char *nptr);


int atoi(const char *nptr);

long int atol(const char *nptr);

long long int atoll(const char *nptr);


long long int atoq(const char *nptr);






double strtod(const char * nptr,
     char ** endptr);




float strtof(const char * nptr,
     char ** endptr);




long double strtold(const char * nptr,
     char ** endptr);





long int strtol(
     const char * nptr,
     char ** endptr,
     int base);




long long int strtoll(
     const char * nptr,
     char ** endptr,
     int base);




unsigned long int strtoul(
     const char * nptr,
     char ** endptr,
     int base);




unsigned long long int strtoull(
     const char * nptr,
     char ** endptr,
     int base);


extern const unsigned long __fc_rand_max = 32767;





int rand(void);
# 158 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 3 4
void srand(unsigned int seed);



void *calloc(size_t nmemb, size_t size);
# 188 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 3 4
void *malloc(size_t size) __attribute__ ((nothrow));
# 204 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 3 4
void free(void *p);
# 248 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 3 4
void *realloc(void *ptr, size_t size);






void abort(void);


int atexit(void (*func)(void));


int at_quick_exit(void (*func)(void));





void exit(int status) __attribute__ ((noreturn));





void _Exit(int status) __attribute__ ((__noreturn__));





char *getenv(const char *name);

int putenv(char *string);

int setenv(const char *name, const char *value, int overwrite);

int unsetenv(const char *name);




void quick_exit(int status) __attribute__ ((__noreturn__));


int system(const char *string);






void *bsearch(const void *key, const void *base,
     size_t nmemb, size_t size,
     int (*compar)(const void *, const void *));



  void qsort(void *base, size_t nmemb, size_t size,
             int (*compar)(const void *, const void *));







int abs(int j);




long int labs(long int j);




long long int llabs(long long int j);


div_t div(int numer, int denom);

ldiv_t ldiv(long int numer, long int denom);

lldiv_t lldiv(long long int numer, long long int denom);



int mblen(const char *s, size_t n);



int mbtowc(wchar_t * pwc,
     const char * s,
     size_t n);


int wctomb(char *s, wchar_t wc);




size_t mbstowcs(wchar_t * pwcs,
     const char * s,
     size_t n);


size_t wcstombs(char * s,
     const wchar_t * pwcs,
     size_t n);


# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_locale_t.h" 1 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/__fc_define_locale_t.h" 3 4


typedef struct __tis_locale_struct
{
  const char *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
} *__tis_locale_t;
typedef __tis_locale_t locale_t;

# 361 "/home/ber/tis-kernel-master/share/libc/stdlib.h" 2 3 4

long
strtol_l(const char * nptr, char ** endptr, int base,
         locale_t loc);

long long
strtoll_l(const char * nptr, char ** endptr, int base,
          locale_t loc);

unsigned long
strtoul_l(const char * nptr, char ** endptr, int base,
          locale_t loc);

unsigned long long
strtoull_l(const char * nptr, char ** endptr, int base,
           locale_t loc);

signed long long
strtoimax_l(const char * nptr, char ** endptr,
            int base, locale_t loc);

unsigned long long
strtoumax_l(const char * nptr, char ** endptr,
            int base, locale_t loc);
quad_t
strtoq_l(const char *nptr, char **endptr, int base, locale_t loc);

u_quad_t
strtouq_l(const char *nptr, char **endptr, int base, locale_t loc);
double
strtod_l(const char * nptr, char ** endptr,
         locale_t loc);
float
strtof_l(const char * nptr, char ** endptr,
         locale_t loc);
long double
strtold_l(const char * nptr, char ** endptr,
          locale_t loc);


int mkstemp(char *__t);


# 38 "lib_sss.h" 2
# 1 "/home/ber/tis-kernel-master/share/libc/string.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_string_axiomatic.h" 1 3 4
# 43 "/home/ber/tis-kernel-master/share/libc/__fc_string_axiomatic.h" 3 4

# 271 "/home/ber/tis-kernel-master/share/libc/__fc_string_axiomatic.h" 3 4

# 38 "/home/ber/tis-kernel-master/share/libc/string.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/stddef.h" 1 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/stddef.h" 3 4

typedef long ptrdiff_t;

# 39 "/home/ber/tis-kernel-master/share/libc/string.h" 2 3 4




# 52 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern int memcmp (const void *__s1, const void *__s2, size_t __n) __attribute__ ((nothrow));
# 67 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern void *memchr(const void *__s, int __c, size_t __n) __attribute__ ((nothrow));
# 79 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern void *memcpy(void * __dest,
      const void * __src, size_t __n) __attribute__ ((nothrow));
# 89 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern void *memmove(void *__dest, const void *__src, size_t __n) __attribute__ ((nothrow));
# 99 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern void *memset(void *__s, int __c, size_t __n) __attribute__ ((nothrow));







extern size_t strlen (const char *__s) __attribute__ ((nothrow));





extern size_t strnlen (const char *__s, size_t __n) __attribute__ ((nothrow));






extern int strcmp (const char *__s1, const char *__s2) __attribute__ ((nothrow));






extern int strncmp (const char *__s1, const char *__s2, size_t __n) __attribute__ ((nothrow));





extern int strcoll (const char *__s1, const char *__s2) __attribute__ ((nothrow));
# 150 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strchr(const char *__s, int __c) __attribute__ ((nothrow));
# 165 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strrchr(const char *__s, int __c) __attribute__ ((nothrow));






extern size_t strcspn(const char *__s, const char *__reject) __attribute__ ((nothrow));






extern size_t strspn(const char *__s, const char *__accept) __attribute__ ((nothrow));






extern char *strpbrk(const char *__s, const char *__accept) __attribute__ ((nothrow));
# 195 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strstr(const char *__haystack, const char *__needle) __attribute__ ((nothrow));







extern char *strtok(char * __s, const char * __delim) __attribute__ ((nothrow));
# 217 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strerror(int __errnum) __attribute__ ((nothrow));
# 228 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strcpy(char * __dest, const char * __src) __attribute__ ((nothrow));
# 244 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strncpy(char * __dest,
       const char * __src, size_t __n) __attribute__ ((nothrow));
# 271 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strcat(char * __dest, const char * __src) __attribute__ ((nothrow));
# 295 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4
extern char *strncat(char * __dest,
                     const char * __src, size_t __n) __attribute__ ((nothrow));






extern size_t strxfrm (char * __dest,
         const char * __src, size_t __n) __attribute__ ((nothrow));







extern char *strdup (const char *__s) __attribute__ ((nothrow));







extern char *strndup (const char *__s, size_t __n) __attribute__ ((nothrow));
# 380 "/home/ber/tis-kernel-master/share/libc/string.h" 3 4




# 1 "/home/ber/tis-kernel-master/share/libc/strings.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/strings.h" 3 4


int bcmp(const void *, const void *, size_t) __attribute__ ((nothrow));
void bcopy(const void *, void *, size_t) __attribute__ ((nothrow));




void bzero(void *s, size_t n) __attribute__ ((nothrow));
int ffs(int) __attribute__ ((nothrow));
char *index(const char *, int) __attribute__ ((nothrow));
char *rindex(const char *, int) __attribute__ ((nothrow));
int strcasecmp(const char *, const char *) __attribute__ ((nothrow));
int strncasecmp(const char *, const char *, size_t) __attribute__ ((nothrow));


# 385 "/home/ber/tis-kernel-master/share/libc/string.h" 2 3 4
# 39 "lib_sss.h" 2




# 1 "/home/ber/tis-kernel-master/share/libc/alloca.h" 1 3 4
# 17 "/home/ber/tis-kernel-master/share/libc/alloca.h" 3 4








void *alloca(size_t size);


# 44 "lib_sss.h" 2







# 50 "lib_sss.h"
typedef uint64_t lsss_z;

typedef void *(*lsss_random_source_t)(void *, size_t);

typedef struct lsss_ctx lsss_ctx;
struct lsss_ctx {





 uint64_t canary1;
 size_t meml;
 int bits;
 int thresh;
 int size;
 int nparts;
 
# 67 "lib_sss.h" 3 4
_Bool 
# 67 "lib_sss.h"
     recoef;

 uint64_t canary2;
 uint64_t *canary3;

 lsss_z *coeffs;
 lsss_z *parts;
 uint64_t *xparts;
 lsss_z *base;


};
# 103 "lib_sss.h"
lsss_ctx *lsss_new(int bits, int thresh, int *err);
void lsss_free(lsss_ctx *ctx);
void lsss_set_secret(lsss_ctx *ctx, void *secret);
void lsss_get_part(lsss_ctx *ctx, void *part, uint64_t number);
int lsss_set_part(lsss_ctx *ctx, void *part, uint64_t number);
int lsss_missing_parts(lsss_ctx *ctx);
int lsss_combine(lsss_ctx *ctx);
void lsss_get_secret(lsss_ctx *ctx, void *secret);
void lsss_register_random_source(lsss_random_source_t);
# 25 "test.c" 2
# 1 "/home/ber/tis-kernel-master/share/libc/time.h" 1 3 4
# 49 "/home/ber/tis-kernel-master/share/libc/time.h" 3 4


# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_clock_t.h" 1 3 4
# 14 "/home/ber/tis-kernel-master/share/libc/__fc_define_clock_t.h" 3 4

# 14 "/home/ber/tis-kernel-master/share/libc/__fc_define_clock_t.h" 3 4
typedef unsigned int clock_t;
# 52 "/home/ber/tis-kernel-master/share/libc/time.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_time_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_time_t.h" 3 4

typedef long int time_t;

# 53 "/home/ber/tis-kernel-master/share/libc/time.h" 2 3 4

# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_tm.h" 1 3 4
# 15 "/home/ber/tis-kernel-master/share/libc/__fc_define_tm.h" 3 4


struct tm {
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};

# 55 "/home/ber/tis-kernel-master/share/libc/time.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_timeval.h" 1 3 4
# 15 "/home/ber/tis-kernel-master/share/libc/__fc_define_timeval.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_suseconds_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_suseconds_t.h" 3 4

typedef signed int suseconds_t;

# 16 "/home/ber/tis-kernel-master/share/libc/__fc_define_timeval.h" 2 3 4

struct timeval {
  time_t tv_sec;
  suseconds_t tv_usec;
};
# 56 "/home/ber/tis-kernel-master/share/libc/time.h" 2 3 4

# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_timespec.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_timespec.h" 3 4

struct timespec {
  long tv_sec;
  long tv_nsec;
};

# 58 "/home/ber/tis-kernel-master/share/libc/time.h" 2 3 4

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};
# 73 "/home/ber/tis-kernel-master/share/libc/time.h" 3 4
clock_t clock(void);


double difftime(time_t time1, time_t time0);


time_t mktime(struct tm *timeptr);
# 94 "/home/ber/tis-kernel-master/share/libc/time.h" 3 4
time_t time(time_t *timer);

char *asctime(const struct tm *timeptr);

char *ctime(const time_t *timer);

struct tm __fc_time_tm;
extern struct tm * const __p_fc_time_tm = &__fc_time_tm;





struct tm *gmtime(const time_t *timer);





struct tm *localtime(const time_t *timer);
struct tm *localtime_r(const time_t *timer, struct tm *r) __attribute__ ((nothrow));

size_t strftime(char * s,
  size_t maxsize,
  const char * format,
  const struct tm * timeptr);


int nanosleep(const struct timespec *, struct timespec *);

extern int daylight;
extern long timezone;
extern char *tzname[2];

void tzset(void);







struct tm *gmtime_r(const time_t *timer, struct tm * result);


# 26 "test.c" 2
# 1 "/home/ber/tis-kernel-master/share/libc/stdio.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/stdarg.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/stdarg.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_va_list.h" 1 3 4
# 14 "/home/ber/tis-kernel-master/share/libc/__fc_define_va_list.h" 3 4

typedef __builtin_va_list va_list;

# 38 "/home/ber/tis-kernel-master/share/libc/stdarg.h" 2 3 4
# 40 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4

# 1 "/home/ber/tis-kernel-master/share/libc/errno.h" 1 3 4
# 164 "/home/ber/tis-kernel-master/share/libc/errno.h" 3 4


extern int __FC_errno;




extern char *program_invocation_name;
extern char *program_invocation_short_name;


# 42 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 1 3 4
# 39 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_ino_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_ino_t.h" 3 4

typedef unsigned int ino_t;

# 40 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_uid_and_gid.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_uid_and_gid.h" 3 4

typedef unsigned int gid_t;
typedef unsigned int uid_t;

# 41 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4

# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_blkcnt_t.h" 1 3 4
# 36 "/home/ber/tis-kernel-master/share/libc/__fc_define_blkcnt_t.h" 3 4
typedef unsigned int blkcnt_t;
# 43 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_blksize_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_blksize_t.h" 3 4

typedef unsigned int blksize_t;

# 44 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_dev_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_dev_t.h" 3 4

typedef unsigned int dev_t;

# 45 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_mode_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_mode_t.h" 3 4


typedef unsigned int mode_t;


# 46 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_nlink_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_nlink_t.h" 3 4

typedef unsigned int nlink_t;

# 47 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_off_t.h" 1 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/__fc_define_off_t.h" 3 4

typedef long int off_t;
typedef signed long off64_t;

# 48 "/home/ber/tis-kernel-master/share/libc/__fc_define_stat.h" 2 3 4





struct statfs {
 unsigned int f_type;
 unsigned int f_bsize;
 unsigned int f_blocks;
 unsigned int f_bfree;
 unsigned int f_bavail;
 unsigned int f_files;
 unsigned int f_ffree;
 unsigned int f_fsid;
 unsigned int f_namelen;
 unsigned int f_frsize;
 unsigned int f_flags;
 unsigned int f_spare[4];
};

struct stat {
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
  time_t st_atime;
  time_t st_mtime;
  time_t st_ctime;
  blksize_t st_blksize;
  blkcnt_t st_blocks;
};


# 43 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_fpos_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_fpos_t.h" 3 4


struct __fc_pos_t { unsigned long __fc_stdio_position; };
typedef struct __fc_pos_t fpos_t;


# 44 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_file.h" 1 3 4
# 40 "/home/ber/tis-kernel-master/share/libc/__fc_define_file.h" 3 4


struct __fc_fs_file {
  char *__fc_fullpath;
  struct stat * __fc_stat;
  unsigned char * (*__fc_content) (void);
  unsigned char * __fc_data;
};

struct __fc_FILE {
  unsigned int __fc_stdio_id;
  fpos_t __fc_position;
  char __fc_error;
  char __fc_eof;
  int __fc_flags;
  struct stat* __fc_inode;
  struct __fc_fs_file* __fc_file;
};
typedef struct __fc_FILE FILE;


# 45 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4
# 57 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_seek_macros.h" 1 3 4
# 58 "/home/ber/tis-kernel-master/share/libc/stdio.h" 2 3 4





extern FILE * __fc_stderr;


extern FILE * __fc_stdin;


extern FILE * __fc_stdout;
# 79 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4
int remove(const char *__filename);


int rename(const char *__old_name, const char *__new_name);



FILE *tmpfile(void);






char *tmpnam(char *__s);







int fclose(FILE *__stream);







int fflush(FILE *__stream);

FILE __fc_fopen[512];
extern FILE* const __p_fc_fopen = __fc_fopen;







FILE *fopen(const char * __filename,
     const char * __mode);




FILE *fdopen(int __fildes, const char *__mode);




FILE *freopen(const char * __filename,
              const char * __mode,
              FILE * __stream);


void setbuf(FILE * __stream,
     char * buf);


int setvbuf(FILE * __stream,
     char * buf,
     int __mode, size_t size);



int fprintf(FILE * __stream,
     const char * format, ...);




int fscanf(FILE * __stream,
     const char * format, ...);




int printf(const char * format, ...);




int scanf(const char * format, ...);




int snprintf(char * __s, size_t n,
    const char * format, ...);




int sprintf(char * __s,
     const char * format, ...);


int sscanf(const char * __s,
     const char * format, ...);


int vfprintf(FILE * __stream,
     const char * format,
     va_list arg);



int vfscanf(FILE * __stream,
     const char * format,
     va_list arg);


int vprintf(const char * format,
     va_list arg);



int vscanf(const char * format,
     va_list arg);



int vsnprintf(char * __s, size_t n,
     const char * format,
     va_list arg);



int vsprintf(char * __s,
     const char * format,
     va_list arg);


int vsscanf(const char * __s,
     const char * format,
     va_list arg);



int fgetc(FILE *__stream);





char *fgets(char * __s, int n,
    FILE * __stream);


int fputc(int c, FILE *__stream);


int fputs(const char * __s,
     FILE * __stream);


int getc(FILE *__stream);


int getchar(void);





char *gets(char *__s);


int putc(int c, FILE *__stream);


int putchar(int c);


int puts(const char *__s);


int ungetc(int c, FILE *__stream);
# 269 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4
size_t fread(void * ptr,
     size_t size, size_t nmemb,
     FILE * __stream);
# 280 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4
size_t fwrite(const void * ptr,
     size_t size, size_t nmemb,
     FILE * __stream);


int fgetpos(FILE * __stream,
     fpos_t * pos);



int fseek(FILE *__stream, long int __offset, int __whence);


int fsetpos(FILE *__stream, const fpos_t *pos);


long int ftell(FILE *__stream);


void rewind(FILE *__stream);


void clearerr(FILE *__stream);


int feof(FILE *__stream);


int fileno(FILE *__stream);


void flockfile(FILE *__stream);


void funlockfile(FILE *__stream);


int ftrylockfile(FILE *__stream);


int ferror(FILE *__stream);


void perror(const char *__s);


int getc_unlocked(FILE *__stream);

int getchar_unlocked(void);

int putc_unlocked(int c, FILE *__stream);

int putchar_unlocked(int c);


void clearerr_unlocked(FILE *__stream);

int feof_unlocked(FILE *__stream);

int ferror_unlocked(FILE *__stream);

int fileno_unlocked(FILE *__stream);
int fflush_unlocked(FILE *__stream);
int fgetc_unlocked(FILE *__stream);
int fputc_unlocked(int c, FILE *__stream);
size_t fread_unlocked(void *ptr, size_t size, size_t n,
                             FILE *__stream);
size_t fwrite_unlocked(const void *ptr, size_t size, size_t n,
         FILE *__stream);

char *fgets_unlocked(char *__s, int n, FILE *__stream);
int fputs_unlocked(const char *__s, FILE *__stream);
# 375 "/home/ber/tis-kernel-master/share/libc/stdio.h" 3 4

# 27 "test.c" 2

# 1 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_time_t.h" 1 3 4
# 38 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_fd_set_t.h" 1 3 4
# 37 "/home/ber/tis-kernel-master/share/libc/__fc_define_fd_set_t.h" 3 4

typedef struct {char __fc_fd_set;} fd_set;

void FD_CLR(int fd, fd_set *fdset);

int FD_ISSET(int fd, fd_set *fdset);

void FD_SET(int fd, fd_set *fdset);

void FD_ZERO(fd_set *fdset);

# 39 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_timespec.h" 1 3 4
# 40 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 2 3 4
# 1 "/home/ber/tis-kernel-master/share/libc/__fc_define_timeval.h" 1 3 4
# 41 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 2 3 4

struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};






int utimes(const char *path, const struct timeval times[2]);
# 80 "/home/ber/tis-kernel-master/share/libc/sys/time.h" 3 4
int gettimeofday(struct timeval *tv, struct timezone *tz);





int settimeofday(const struct timeval *tv, const struct timezone *tz);
# 29 "test.c" 2
# 38 "test.c"

# 38 "test.c"
int bits_a_tester[] = { 64, 128, 256, 384, 512, 768, 1024, 2048 };
int thresh_a_tester[] = { 3, 4, 5 , 6 };
# 80 "test.c"
uint64_t temps() {
 struct timeval tv;
 gettimeofday(&tv, 
# 82 "test.c" 3 4
                  ((void*)0)
# 82 "test.c"
                      );
 return (uint64_t)tv.tv_sec*1000 + (tv.tv_usec/1000);
}
# 98 "test.c"
void *random_bytes(void *dest, size_t n) {
        size_t i;
        unsigned char *d;
        d = (unsigned char*)dest;
        for (i=0;i<n;i++) {
                *d = (unsigned char)(rand() & 0xff);
                d++;
        }
        return dest;
}
# 117 "test.c"
void lsss_zX_print_hex(lsss_z *poly, int size) {
 int i;
 for (i=size-1; i>=0; i--) {
  printf("0x%016llX ", poly[i]);
 }
}
# 133 "test.c"
void essai_split_combine(int bits, int thresh, int *tps_gen_, int *tps_rec_) {
 uint64_t avant, tps_gen, tps_rec;
 char *secret, *buf;
 lsss_z *part, xpart;
 int i, err;
 lsss_ctx *ctx_split, *ctx_combine;



 secret = alloca(1256);


 random_bytes(secret, 1256);



 err=0;
 ctx_split = lsss_new(bits, thresh, &err);
 if (err != 0) {
  printf("lsss_new() failed. err=%d\n", err);
  exit(1);
 }

 err=0;
 ctx_combine = lsss_new(bits, thresh, &err);
 if (err != 0) {
  printf("lsss_new() failed. err=%d\n", err);
  exit(1);
 }


 ctx_combine->recoef = 
# 164 "test.c" 3 4
                      1
# 164 "test.c"
                          ;

 part = alloca(ctx_split->size*8); memset(part, 0, ctx_split->size*8);
 lsss_set_secret(ctx_split, secret);
 avant=temps();

 i=thresh+rand()%4;
 for (i=0; i<thresh; i++) {
  xpart=1+rand()%1000;
  lsss_get_part(ctx_split, part, xpart);
  err = lsss_set_part(ctx_combine, part, xpart);
  if (err == 5) {

   i--;
  }
 }

 tps_gen=temps()-avant;
 avant=temps();

 if (lsss_combine(ctx_combine) == 0) {
  buf = alloca(ctx_split->size*8);
  memset(buf, 0, ctx_split->size*8);
  lsss_get_secret(ctx_combine, buf);
 } else {
  printf("Combine failed\n");
  exit(1);
 }
 tps_rec = temps()-avant;
 avant=temps();

 if (memcmp(buf, secret, (bits+7)>>3)) {
  printf("Reconstitution failed\n");
  exit(1);
 }

 if (ctx_combine->recoef && memcmp(ctx_split->coeffs, ctx_combine->coeffs, ctx_split->size*8*thresh)) {
  printf("All coeff reduction failed\n");
  exit(1);
 }
 lsss_free(ctx_combine);
 lsss_free(ctx_split);
 if (tps_gen_) *tps_gen_ = tps_gen;
 if (tps_rec_) *tps_rec_ = tps_rec;
}






void performance_test(void) {
 puts("************ First test : performance\n");

 srand (time (
# 218 "test.c" 3 4
             ((void*)0)
# 218 "test.c"
                 ));
 lsss_register_random_source(random_bytes);


 int tps_gen[(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0]))][(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0]))];
 int tps_rec[(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0]))][(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0]))];

 memset(tps_gen, 0, sizeof tps_gen);
 memset(tps_rec, 0, sizeof tps_rec);


 for (int n=0; n<2; n++)
 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++)
 for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) {
  int bits, thresh;
  bits = bits_a_tester[b];
  thresh = thresh_a_tester[t];

  int tg, tr;
  essai_split_combine(bits, thresh, &tg, &tr);
  printf("."); fflush(
# 238 "test.c" 3 4
                     (__fc_stdout)
# 238 "test.c"
                           );
  tps_gen[b][t] += tg;
  tps_rec[b][t] += tr;
 }


 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++)
 for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) {
  tps_gen[b][t] /= 2;
  tps_rec[b][t] /= 2;
 }


 printf("\n\nParts generation time (milliseconds) :\n");
 printf("X"); for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", bits_a_tester[b]);
 printf("\n");
 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++) {
  printf("%d", thresh_a_tester[t]);
  for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", tps_gen[b][t]);
  printf("\n");
 }

 printf("\nAlgorithmic complexity validation :\n");
 printf("\nPart generation time per bit length and threshold (1E6 * t * bits^-2 * thresh^-2)\n");
 printf("X"); for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", bits_a_tester[b]);
 printf("\n");
 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++) {
  printf("%d", thresh_a_tester[t]);
  for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) {
   float f=((float)bits_a_tester[b]*
            (float)bits_a_tester[b]*
      (float)thresh_a_tester[t]*
      (float)thresh_a_tester[t]);
   printf(";%f", (float)1.0E6*tps_gen[b][t]/f);
  }
  printf("\n");
 }

 printf("\nRecombination time (milliseconds) :\n");
 printf("X"); for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", bits_a_tester[b]);
 printf("\n");
 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++) {
  printf("%d", thresh_a_tester[t]);
  for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", tps_rec[b][t]);
  printf("\n");
 }

 printf("\nAlgorithmic complexity validation :\n");
 printf("Recombination time par bits length and threshold (1E6 * t * bits^-2 * thresh^-2)\n");
 printf("X"); for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) printf(";%d", bits_a_tester[b]);
 printf("\n");
 for (int t=0; t<(sizeof((thresh_a_tester))/sizeof((thresh_a_tester)[0])); t++) {
  printf("%d", thresh_a_tester[t]);
  for (int b=0; b<(sizeof((bits_a_tester))/sizeof((bits_a_tester)[0])); b++) {
   float f=((float)bits_a_tester[b]*
            (float)bits_a_tester[b]*
      (float)thresh_a_tester[t]*
      (float)thresh_a_tester[t]);
   printf(";%f", (float)1.0E6*tps_rec[b][t]/f);
  }
  printf("\n");
 }
}







void fuzzing_test(void) {
 puts("\n\n************ Second test : random parameters (fuzzing)\n");
 for (int n=0; n<100; n++) {
  int b = ((rand()%1000)<<3) +8;
  int t = 3+2*(rand()%4);
  printf("b=%d t=%d  %d%% done           \r", b, t, (uint64_t)100*n/100); fflush(
# 313 "test.c" 3 4
                                                                                    (__fc_stdout)
# 313 "test.c"
                                                                                          );
  essai_split_combine(b,t, 
# 314 "test.c" 3 4
                          ((void*)0)
# 314 "test.c"
                              , 
# 314 "test.c" 3 4
                                ((void*)0)
# 314 "test.c"
                                    );

 }
 printf("\n%d tests done\n", 100);
}


void main(void) {
 performance_test();
 fuzzing_test();
}
