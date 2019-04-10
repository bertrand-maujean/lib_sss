# 1 "lib_sss.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "lib_sss.c"
# 35 "lib_sss.c"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 364 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 415 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 416 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 365 "/usr/include/features.h" 2 3 4
# 388 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 389 "/usr/include/features.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;





typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 173 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 241 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 289 "/usr/include/libio.h" 3 4
  __off64_t _offset;







  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;

  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 333 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 385 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 429 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 459 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 104 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;




# 166 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 167 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 211 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 229 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 254 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 268 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 297 "/usr/include/stdio.h" 3 4

# 308 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 321 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 414 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 445 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 465 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 496 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 524 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 552 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 563 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 596 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 642 "/usr/include/stdio.h" 3 4

# 667 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 739 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 775 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 794 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 817 "/usr/include/stdio.h" 3 4

# 826 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 856 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 874 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 914 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 944 "/usr/include/stdio.h" 3 4

# 36 "lib_sss.c" 2
# 1 "lib_sss.h" 1
# 35 "lib_sss.h"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdbool.h" 1 3 4
# 36 "lib_sss.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h" 2 3 4
# 37 "lib_sss.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 328 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 43 "/usr/include/stdlib.h" 2 3 4
# 56 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 100 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 266 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 200 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 216 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 217 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;







# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 48 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 66 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 98 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 108 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 120 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 133 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 125 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;




    unsigned char __pad1[7];


    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 220 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 276 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 454 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;




extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 539 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 567 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 580 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 602 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 623 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 672 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 694 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 712 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 735 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 772 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 859 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 911 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 921 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 922 "/usr/include/stdlib.h" 2 3 4
# 934 "/usr/include/stdlib.h" 3 4

# 38 "lib_sss.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 123 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 160 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 206 "/usr/include/string.h" 3 4

# 231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 277 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 392 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 422 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 440 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 484 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 512 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 529 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 552 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 656 "/usr/include/string.h" 3 4

# 39 "lib_sss.h" 2
# 50 "lib_sss.h"

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
# 37 "lib_sss.c" 2





static void lsss_zX_raz(lsss_z *poly, int size);
static void lsss_zX_setbit(lsss_z *poly, int bit);
static void lsss_zX_clrbit(lsss_z *poly, int bit);
static int lsss_zX_tstbit(lsss_z *poly, int bit);
static void lsss_zX_add(lsss_z *somme, const lsss_z *a, const lsss_z *b, int size);
static void lsss_zX_shr(lsss_z *poly, int d, int size);
static void lsss_zX_shl(lsss_z *poly, int d, int size);
static void lsss_zX_shr1(lsss_z *poly, int size);
static int lsss_zX_degre(lsss_z *p, int size);
static void lsss_zX_div(lsss_z *q, lsss_z *r, lsss_z *n, lsss_z *d, int size);
static void lsss_zX_mul(lsss_z *produit, lsss_z *a, lsss_z *b, int size, lsss_z *base);
static void lsss_zX_random(lsss_z *p, int degre);
static void lsss_zX_print(lsss_z *poly, int size);
static void lsss_zX_print_hex(lsss_z *poly, int size);
static int lsss_zX_est1(lsss_z *p, int size);
static void lsss_zXP_inverse(lsss_z *inv, lsss_z *a, lsss_z *base, int size);
static int lsss_zX_irreductible(lsss_z *p, int d);


static lsss_random_source_t lsss_random_source=
# 61 "lib_sss.c" 3 4
                                              ((void *)0)
# 61 "lib_sss.c"
                                                  ;





void lsss_zX_raz(lsss_z *poly, int size) {
 int i;
 for (i=0; i<size; i++)
  poly[i] =0;
}





void lsss_zX_setbit(lsss_z *poly, int bit) {
 poly[ (bit >> 6) ] |= (uint64_t)1<<( bit & 63 );
}






void lsss_zX_clrbit(lsss_z *poly, int bit) {
 poly[ (bit >> 6) ] &= ~ ((uint64_t)1<<( bit & 63 ));
}







int lsss_zX_tstbit(lsss_z *poly, int bit) {
 return (poly[ (bit >> 6) ] & ((uint64_t)1<<( bit & 63 )) ) >> (bit & 63);
}
# 117 "lib_sss.c"
void lsss_zX_add(lsss_z *somme, const lsss_z *a, const lsss_z *b, int size) {
 uint64_t r;
 __asm__("									\t\n"
   "movsxd	rcx, %4							\t\n"
   "mov		rsi, %2						\t\n"
   "mov		rdi, %1						\t\n"
   "mov		rdx, %3						\t\n"
   "cld									\t\n"
  "lsss_zX_add.boucle:						\t\n"
   "lodsq									\t\n"
   "xor		rax,[rdx]					\t\n"
   "stosq									\t\n"
   "add		rdx,8						\t\n"
   "loop		lsss_zX_add.boucle			\t\n"
  : "=m" (r)
  : "m" (somme), "m" (a), "m"(b), "m"(size)
 );
}
# 143 "lib_sss.c"
void lsss_zX_shr1(lsss_z *poly, int size) {
 uint64_t r;

 __asm__("									\t\n"
  "movsxd	rcx,%2							\t\n"
  "mov	rsi,%1							\t\n"
  "cmp 	rcx,0							\n\n"
  "jz 	lsss_zX_shr1.erreur_size0   		\n\t"

 "lsss_zX_shr1.boucle:							\n\t"
  "dec	rcx									\n\t"
  "jz		lsss_zX_shr1.dernier_qword  		\n\t"
  "mov 	rax, [rsi+8]						\t\n"
  "shrd	qword ptr [rsi], rax, 1				\t\n"
  "add	rsi,8								\t\n"
  "jmp 	lsss_zX_shr1.boucle					\t\n"
  "											\t\n"

 "lsss_zX_shr1.dernier_qword:					\t\n"
  "shr	qword ptr [rsi],1 					\t\n"

 "lsss_zX_shr1.erreur_size0: 					\t\n"

  : "=m" (r)
  : "m" (poly), "m" (size)
 );
}







void lsss_zX_shl1(lsss_z *poly, int size) {
 uint64_t r;

 __asm__("							\t\n"
  "movsxd	rcx,%2					\t\n"
  "mov	rsi,rcx					\t\n"
  "dec	rsi						\t\n"
  "shl	rsi,3					\t\n"
  "add	rsi, %1					\t\n"
  "cmp 	rcx,0					\n\n"
  "jz 	lsss_zX_shl1.erreur_size0   		\n\t"

 "lsss_zX_shl1.boucle:							\n\t"
  "dec	rcx						\n\t"
  "jz		lsss_zX_shl1.dernier_qword		\n\t"
  "mov 	rax, [rsi-8]			\t\n"
  "shld	qword ptr [rsi], rax, 1	\t\n"
  "sub	rsi,8					\t\n"
  "jmp lsss_zX_shl1.boucle		\t\n"
  "								\t\n"

 "lsss_zX_shl1.dernier_qword:					\t\n"
  "shl	qword ptr [rsi],1 		\t\n"

 "lsss_zX_shl1.erreur_size0: 					\t\n"

  : "=m" (r)
  : "m" (poly), "m" (size)
 );
}
# 266 "lib_sss.c"
void lsss_zX_shl(lsss_z *poly, int d, int size) {
 uint64_t r;
# 276 "lib_sss.c"
 __asm__("							\t\n"
  "movsxd	rdx,%3    				\t\n"
  "cmp 	rdx,0					\n\n"
  "jz 	lsss_zX_shl.erreur_size0   		\n\t"

  "mov	rdi,rdx					\t\n"
  "dec	rdi						\t\n"
  "shl	rdi,3					\t\n"
  "add	rdi, %1					\t\n"

  "movsxd	rax,%2					\t\n"
  "mov 	rcx,rax					\t\n"
  "and	rcx,63					\t\n"

  "shr	rax,6					\t\n"
  "mov 	r9, rax					\t\n"
  "sub 	rdx,rax					\t\n"
  "jb		lsss_zX_shl.erreur_size0 \t\n"
  "shl	rax,3					\t\n"
  "mov	rsi, rdi				\t\n"
  "neg	rax						\t\n"
  "add	rsi, rax				\t\n"
  "std							\t\n"

 "lsss_zX_shl.boucle:				\n\t"
  "dec	rdx						\n\t"
  "jz		lsss_zX_shl.dernier_qword		\n\t"

  "mov	r8, [rsi-8]				\t\n"
  "lodsq							\t\n"
  "shld	rax, r8, cl				\t\n"
  "stosq							\t\n"
  "jmp lsss_zX_shl.boucle			\t\n"
  "								\t\n"

 "lsss_zX_shl.dernier_qword:			\t\n"
  "lodsq							\t\n"
  "shl	rax,cl			 		\t\n"
  "stosq							\t\n"
  "xor 	rax,rax						\t\n"
 "lsss_zX_shl.raz_qword:					\t\n"
  "cmp 	r9,0						\t\n"
  "jz 	lsss_zX_shl.erreur_size0	\t\n"
  "stosq								\t\n"
  "dec 	r9							\t\n"
  "jmp	lsss_zX_shl.raz_qword		\t\n"


 "lsss_zX_shl.erreur_size0: 					\t\n"

  : "=m" (r)
  : "m" (poly), "m"(d), "m" (size)
 );

}
# 339 "lib_sss.c"
int lsss_zX_degre(lsss_z *p, int size) {
 int i,j,n;
 for (i=size*64-1; i>=0; i--) {
  if (lsss_zX_tstbit(p, i)) return i;
 }
 return 0;
}
# 356 "lib_sss.c"
void lsss_zX_div(lsss_z *q, lsss_z *r, lsss_z *n, lsss_z *d, int size) {
 int i, dd;
 lsss_z *da;
 memset(q, 0, 8*size);
 memcpy(r, n, 8*size);
 da=
# 361 "lib_sss.c" 3 4
   __builtin_alloca (
# 361 "lib_sss.c"
   8*size
# 361 "lib_sss.c" 3 4
   )
# 361 "lib_sss.c"
                 ;
 memcpy(da, d, 8*size);
 dd = lsss_zX_degre(d, size);

 if (dd==0) return;

 lsss_zX_shl(da, 64*size-dd-1, size);

 for (i=size*64-1; i>=dd; i--) {
  if (lsss_zX_tstbit(r, i)) {
   lsss_zX_setbit(q, i-dd);
   lsss_zX_add(r, r, da, size);
  }

  lsss_zX_shr1(da, size);



 }
}
# 390 "lib_sss.c"
void lsss_zX_mul(lsss_z *produit, lsss_z *a, lsss_z *b, int size, lsss_z *base) {
 lsss_z *f;
 int i;
 int db;

 f = 
# 395 "lib_sss.c" 3 4
    __builtin_alloca (
# 395 "lib_sss.c"
    size*8*2
# 395 "lib_sss.c" 3 4
    )
# 395 "lib_sss.c"
                    ;
 memset(produit, 0, size*8*2);
 memset(f, 0, size*8*2);
 memcpy(f, a, size*8);

 for (i=0; i<64*size; i++) {
  if (lsss_zX_tstbit(b, i)) {
   lsss_zX_add(produit, produit, f, size*2);
  }

  lsss_zX_shl1(f, size*2);



 }


 if (base != 
# 412 "lib_sss.c" 3 4
            ((void *)0)
# 412 "lib_sss.c"
                ) {
  memset(f, 0, size*8*2);
  memcpy(f, base, size*8);
  db = lsss_zX_degre(f,2*size);
  if (db==0) return;
  lsss_zX_shl(f, size*64*2 -db-1, size*2);
  for (i=size*64*2-1; i>=db; i--) {
   if (lsss_zX_tstbit(produit, i)) {
    lsss_zX_add(produit, produit, f, 2*size);
   }

   lsss_zX_shr1(f, 2*size);



  }
 }
}
# 443 "lib_sss.c"
void lsss_zX_random(lsss_z *p, int degre) {
 unsigned char *c;
 int n;
 c = (unsigned char*)p;
 if (lsss_random_source==
# 447 "lib_sss.c" 3 4
                        ((void *)0)
# 447 "lib_sss.c"
                            ) {
  for (n=degre>>3; n; n--) {

   *c = (unsigned char) random() & 255;




   c++;
  }
 } else {
  (*lsss_random_source)(c, degre>>3);
 }
}
# 470 "lib_sss.c"
int lsss_zX_est1(lsss_z *p, int size) {
 int i;
 for (i=size-1; i>0; i--) if (p[i]) return 0;
 return (p[0] == 1);
}

int lsss_zX_est0(lsss_z *p, int size) {
 int i;
 for (i=size-1; i>=0; i--) if (p[i]) return 0;
 return 1;
}
# 492 "lib_sss.c"
void lsss_zXP_inverse(lsss_z *inv, lsss_z *a, lsss_z *base, int size) {
 lsss_z *u, *v, *g, *t, *z, *h, *temp;
 int i;

 u = 
# 496 "lib_sss.c" 3 4
    __builtin_alloca (
# 496 "lib_sss.c"
    size*8
# 496 "lib_sss.c" 3 4
    )
# 496 "lib_sss.c"
                  ;
 v = 
# 497 "lib_sss.c" 3 4
    __builtin_alloca (
# 497 "lib_sss.c"
    size*8
# 497 "lib_sss.c" 3 4
    )
# 497 "lib_sss.c"
                  ;
 g = 
# 498 "lib_sss.c" 3 4
    __builtin_alloca (
# 498 "lib_sss.c"
    size*8
# 498 "lib_sss.c" 3 4
    )
# 498 "lib_sss.c"
                  ;
 t = 
# 499 "lib_sss.c" 3 4
    __builtin_alloca (
# 499 "lib_sss.c"
    size*8
# 499 "lib_sss.c" 3 4
    )
# 499 "lib_sss.c"
                  ;
 z = 
# 500 "lib_sss.c" 3 4
    __builtin_alloca (
# 500 "lib_sss.c"
    size*8
# 500 "lib_sss.c" 3 4
    )
# 500 "lib_sss.c"
                  ;
 h = 
# 501 "lib_sss.c" 3 4
    __builtin_alloca (
# 501 "lib_sss.c"
    size*8
# 501 "lib_sss.c" 3 4
    )
# 501 "lib_sss.c"
                  ;

 memcpy(u, a, size*8);
 memcpy(v, base, size*8);
 memset(g, 0, size*8);
 memset(z, 0, size*8); z[0]=1;

 if (lsss_zX_est0(a, size)) {
  i=0;
  i=1/i;
  return;
 }

 while (0==lsss_zX_est1(u, size)) {
  i = lsss_zX_degre(u, size) - lsss_zX_degre(v, size);
  if (i<0) {
   temp=v; v=u; u=temp;
   temp=z; z=g; g=temp;
   i=-i;
  }
  memcpy(h, v, size*8); lsss_zX_shl(h, i, size);
  lsss_zX_add(u, u, h, size);
  memcpy(h, g, size*8); lsss_zX_shl(h, i, size);
  lsss_zX_add(z,z,h, size);
 }
 memcpy(inv, z, size*8);
 memset(u, 0, size*8);
 memset(v, 0, size*8);
 memset(g, 0, size*8);
 memset(t, 0, size*8);
 memset(z, 0, size*8);
 memset(h, 0, size*8);
}
# 543 "lib_sss.c"
int lsss_zX_irreductible(lsss_z *p, int d) {
# 1 "irred_f2X_8.c" 1







static const uint16_t coeffs[] = {
 4,8,4,3,1,
 4,16,5,3,1, 4,24,4,3,1, 4,32,7,3,2, 4,40,5,4,3, 4,48,5,3,2, 4,56,7,4,2, 4,64,4,3,1, 4,72,10,9,3,
 4,80,9,4,2, 4,88,7,6,2, 4,96,10,9,6, 4,104,4,3,1, 4,112,5,4,3, 4,120,4,3,1, 4,128,7,2,1, 4,136,5,3,2,
 4,144,7,4,2, 4,152,6,3,2, 4,160,5,3,2, 4,168,15,3,2, 4,176,11,3,2, 4,184,9,8,7, 4,192,7,2,1, 4,200,5,3,2,
 4,208,9,3,1, 4,216,7,3,1, 4,224,9,8,3, 4,232,9,4,2, 4,240,8,5,3, 4,248,15,14,10, 4,256,10,5,2, 4,264,9,6,2,
 4,272,9,3,2, 4,280,9,5,2, 4,288,11,10,1, 4,296,7,3,2, 4,304,11,2,1, 4,312,9,7,4, 4,320,4,3,1, 4,328,8,3,1,
 4,336,7,4,1, 4,344,7,2,1, 4,352,13,11,6, 4,360,5,3,2, 4,368,7,3,2, 4,376,8,7,5, 4,384,12,3,2, 4,392,13,10,6,
 4,400,5,3,2, 4,408,5,3,2, 4,416,9,5,2, 4,424,9,7,2, 4,432,13,4,3, 4,440,4,3,1, 4,448,11,6,4, 4,456,18,9,6,
 4,464,19,18,13, 4,472,11,3,2, 4,480,15,9,6, 4,488,4,3,1, 4,496,16,5,2, 4,504,15,14,6, 4,512,8,5,2, 4,520,15,11,2,
 4,528,11,6,2, 4,536,7,5,3, 4,544,8,3,1, 4,552,19,16,9, 4,560,11,9,6, 4,568,15,7,6, 4,576,13,4,3, 4,584,14,13,3,
 4,592,13,6,3, 4,600,9,5,2, 4,608,19,13,6, 4,616,19,10,3, 4,624,11,6,5, 4,632,9,2,1, 4,640,14,3,2, 4,648,13,3,1,
 4,656,7,5,4, 4,664,11,9,8, 4,672,11,6,5, 4,680,23,16,9, 4,688,19,14,6, 4,696,23,10,2, 4,704,8,3,2, 4,712,5,4,3,
 4,720,9,6,4, 4,728,4,3,2, 4,736,13,8,6, 4,744,13,11,1, 4,752,13,10,3, 4,760,11,6,5, 4,768,19,17,4, 4,776,15,14,7,
 4,784,13,9,6, 4,792,9,7,3, 4,800,9,7,1, 4,808,14,3,2, 4,816,11,8,2, 4,824,11,6,4, 4,832,13,5,2, 4,840,11,5,1,
 4,848,11,4,1, 4,856,19,10,3, 4,864,21,10,6, 4,872,13,3,1, 4,880,15,7,5, 4,888,19,18,10, 4,896,7,5,3, 4,904,12,7,2,
 4,912,7,5,1, 4,920,14,9,6, 4,928,10,3,2, 4,936,15,13,12, 4,944,12,11,9, 4,952,16,9,7, 4,960,12,9,3, 4,968,9,5,2,
 4,976,17,10,6, 4,984,24,9,3, 4,992,17,15,13, 4,1000,5,4,3, 4,1008,19,17,8, 4,1016,15,6,3, 4,1024,19,6,1, 4,1032,21,15,3,
 4,1040,15,10,8, 4,1048,15,7,2, 4,1056,11,2,1, 4,1064,13,11,9, 4,1072,19,9,8, 4,1080,15,9,6, 4,1088,22,21,10, 4,1096,24,15,6,
 4,1104,21,9,6, 4,1112,15,8,6, 4,1120,13,9,6, 4,1128,7,3,1, 4,1136,9,4,2, 4,1144,11,9,7, 4,1152,15,3,2, 4,1160,15,11,2,
 4,1168,12,7,2, 4,1176,11,9,3, 4,1184,5,3,2, 4,1192,9,8,7, 4,1200,15,9,6, 4,1208,11,10,6, 4,1216,27,25,9, 4,1224,12,9,7,
 4,1232,25,10,2, 4,1240,17,7,5, 4,1248,15,5,3, 4,1256,31,30,2, 4,1264,5,3,2, 4,1272,16,9,7, 4,1280,12,7,5, 4,1288,23,16,6,
 4,1296,15,14,2, 4,1304,20,17,15, 4,1312,15,14,2, 4,1320,12,9,3, 4,1328,21,11,3, 4,1336,8,3,2, 4,1344,15,6,1, 4,1352,17,14,6,
 4,1360,5,3,2, 4,1368,15,9,5, 4,1376,19,18,10, 4,1384,11,5,1, 4,1392,17,15,5, 4,1400,8,3,1, 4,1408,14,13,6, 4,1416,10,9,6,
 4,1424,11,6,2, 4,1432,11,10,6, 4,1440,14,13,7, 4,1448,11,3,2, 4,1456,9,4,2, 4,1464,12,9,3, 4,1472,11,4,1, 4,1480,11,10,2,
 4,1488,9,8,6, 4,1496,13,11,4, 4,1504,8,3,2, 4,1512,10,9,3, 4,1520,13,10,3, 4,1528,18,17,7, 4,1536,21,6,2, 4,1544,11,7,1,
 4,1552,19,12,2, 4,1560,8,5,2, 4,1568,21,10,7, 4,1576,20,9,2, 4,1584,21,19,13, 4,1592,12,7,5, 4,1600,14,11,1, 4,1608,15,13,1,
 4,1616,13,4,3, 4,1624,13,11,5, 4,1632,17,15,3, 4,1640,7,5,1, 4,1648,18,13,1, 4,1656,19,15,10, 4,1664,17,9,6, 4,1672,5,4,3,
 4,1680,11,6,2, 4,1688,15,8,6, 4,1696,15,6,3, 4,1704,14,11,3, 4,1712,15,12,5, 4,1720,17,14,10, 4,1728,11,10,5, 4,1736,19,14,6,
 4,1744,19,18,2, 4,1752,6,3,2, 4,1760,8,3,2, 4,1768,25,6,5, 4,1776,10,9,3, 4,1784,23,21,6, 4,1792,17,14,3, 4,1800,22,5,2,
 4,1808,19,16,9, 4,1816,23,18,1, 4,1824,7,5,1, 4,1832,18,13,7, 4,1840,21,10,2, 4,1848,16,13,3, 4,1856,11,9,4, 4,1864,11,9,1,
 4,1872,10,5,2, 4,1880,15,4,2, 4,1888,17,13,2, 4,1896,26,11,2, 4,1904,12,11,1, 4,1912,20,15,10, 4,1920,11,3,2, 4,1928,17,16,7,
 4,1936,15,10,1, 4,1944,27,22,18, 4,1952,15,14,6, 4,1960,17,15,2, 4,1968,25,19,14, 4,1976,25,19,17, 4,1984,13,11,5, 4,1992,6,3,2,
 4,2000,13,10,6, 4,2008,26,23,13, 4,2016,21,15,7, 4,2024,40,35,9, 4,2032,7,6,2, 4,2040,7,2,1, 4,2048,19,14,13, 4,2056,13,12,3,
 4,2064,17,9,2, 4,2072,13,10,3, 4,2080,4,3,1, 4,2088,18,11,5, 4,2096,19,4,2, 4,2104,19,15,9, 4,2112,16,13,7, 4,2120,17,14,6,
 4,2128,23,9,1, 4,2136,15,12,9, 4,2144,13,7,3, 4,2152,24,13,7, 4,2160,31,25,14, 4,2168,11,9,3, 4,2176,15,8,1, 4,2184,11,10,5,
 4,2192,8,5,3, 4,2200,20,15,5, 4,2208,21,16,6, 4,2216,24,7,2, 4,2224,21,19,5, 4,2232,19,17,4, 4,2240,23,7,1, 4,2248,9,4,3,
 4,2256,14,9,6, 4,2264,15,7,2, 4,2272,21,10,9, 4,2280,13,4,2, 4,2288,17,16,7, 4,2296,15,10,1, 4,2304,8,7,5, 4,2312,19,6,4,
 4,2320,13,11,5, 4,2328,15,9,2, 4,2336,15,10,8, 4,2344,27,26,14, 4,2352,23,20,2, 4,2360,19,10,8, 4,2368,13,11,8, 4,2376,7,5,4,
 4,2384,21,19,1, 4,2392,31,13,3, 4,2400,20,19,17, 4,2408,23,6,4, 4,2416,23,6,5, 4,2424,21,16,6, 4,2432,29,22,19, 4,2440,12,7,5,
 4,2448,21,10,4, 4,2456,12,5,3, 4,2464,5,4,3, 4,2472,12,3,1, 4,2480,20,5,2, 4,2488,23,13,9, 4,2496,12,3,1, 4,2504,19,8,6,
 4,2512,29,21,7, 4,2520,31,15,13, 4,2528,19,9,4, 4,2536,21,10,9, 4,2544,21,20,6, 4,2552,28,3,2, 4,2560,9,3,1, 4,2568,8,5,2,
 4,2576,7,2,1, 4,2584,25,19,12, 4,2592,15,12,5, 4,2600,14,13,7, 4,2608,15,11,2, 4,2616,17,8,7, 4,2624,15,10,4, 4,2632,19,5,3,
 4,2640,23,11,9, 4,2648,15,8,1, 4,2656,19,11,5, 4,2664,27,21,19, 4,2672,18,7,1, 4,2680,15,9,4, 4,2688,21,10,6, 4,2696,17,15,12,
 4,2704,12,9,7, 4,2712,21,12,7, 4,2720,25,18,1, 4,2728,21,7,5, 4,2736,16,3,1, 4,2744,19,18,10, 4,2752,15,4,2, 4,2760,29,26,7,
 4,2768,25,19,15, 4,2776,7,3,2, 4,2784,29,21,15, 4,2792,12,7,2, 4,2800,17,14,6, 4,2808,15,13,1, 4,2816,21,19,8, 4,2824,15,14,10,
 4,2832,27,18,1, 4,2840,20,15,9, 4,2848,15,8,1, 4,2856,15,13,3, 4,2864,21,17,15, 4,2872,21,5,2, 4,2880,13,10,6, 4,2888,11,4,1,
 4,2896,29,6,1, 4,2904,27,15,6, 4,2912,16,9,2, 4,2920,19,9,5, 4,2928,24,21,11, 4,2936,5,3,2, 4,2944,5,3,2, 4,2952,17,13,2,
 4,2960,12,3,2, 4,2968,29,27,4, 4,2976,21,10,3, 4,2984,17,9,6, 4,2992,23,3,1, 4,3000,15,12,9, 4,3008,15,13,1, 4,3016,38,25,9,
 4,3024,32,3,2, 4,3032,17,15,4, 4,3040,27,21,3, 4,3048,18,3,2, 4,3056,5,4,3, 4,3064,25,11,9, 4,3072,11,10,5, 4,3080,21,19,16,
 4,3088,20,13,11, 4,3096,33,29,14, 4,3104,23,9,5, 4,3112,17,15,1, 4,3120,18,17,11, 4,3128,30,19,11, 4,3136,15,12,10, 4,3144,23,21,8,
 4,3152,21,17,6, 4,3160,7,6,2, 4,3168,33,31,18, 4,3176,13,10,5, 4,3184,11,10,2, 4,3192,25,8,7, 4,3200,11,6,4, 4,3208,16,13,3,
 4,3216,21,11,3, 4,3224,23,19,1, 4,3232,12,9,7, 4,3240,12,3,2, 4,3248,15,8,1, 4,3256,31,26,2, 4,3264,17,5,2, 4,3272,23,10,1,
 4,3280,16,15,6, 4,3288,21,18,11, 4,3296,19,14,13, 4,3304,19,17,3, 4,3312,14,9,3, 4,3320,17,10,4, 4,3328,17,9,2, 4,3336,11,10,5,
 4,3344,30,27,15, 4,3352,21,20,19, 4,3360,18,15,5, 4,3368,7,5,1, 4,3376,11,9,1, 4,3384,21,9,3, 4,3392,23,13,6, 4,3400,14,13,6,
 4,3408,16,15,6, 4,3416,28,27,1, 4,3424,22,15,6, 4,3432,25,2,1, 4,3440,27,16,1, 4,3448,17,11,6, 4,3456,19,18,9, 4,3464,11,6,3,
 4,3472,17,14,7, 4,3480,19,15,13, 4,3488,12,11,1, 4,3496,35,21,4, 4,3504,23,17,10, 4,3512,37,35,6, 4,3520,32,29,3, 4,3528,25,18,7,
 4,3536,12,7,5, 4,3544,21,14,2, 4,3552,15,9,6, 4,3560,17,3,2, 4,3568,21,12,10, 4,3576,19,10,3, 4,3584,25,12,10, 4,3592,38,33,14,
 4,3600,9,5,2, 4,3608,15,14,10, 4,3616,25,18,7, 4,3624,29,27,12, 4,3632,26,17,5, 4,3640,20,15,10, 4,3648,23,7,2, 4,3656,17,12,11,
 4,3664,35,24,14, 4,3672,19,17,8, 4,3680,14,13,7, 4,3688,32,13,11, 4,3696,36,33,22, 4,3704,14,13,1, 4,3712,13,12,7, 4,3720,17,15,11,
 4,3728,9,4,2, 4,3736,33,22,18, 4,3744,27,14,2, 4,3752,9,4,2, 4,3760,23,9,1, 4,3768,14,7,2, 4,3776,7,5,4, 4,3784,29,13,6,
 4,3792,20,7,5, 4,3800,24,23,21, 4,3808,29,18,4, 4,3816,19,13,9, 4,3824,19,13,2, 4,3832,35,13,2, 4,3840,27,9,1, 4,3848,29,18,13,
 4,3856,39,25,3, 4,3864,19,15,9, 4,3872,10,3,2, 4,3880,27,5,1, 4,3888,45,42,6, 4,3896,15,7,5, 4,3904,17,13,2, 4,3912,24,11,2,
 4,3920,15,13,8, 4,3928,8,7,5, 4,3936,15,5,3, 4,3944,31,29,28, 4,3952,11,6,5, 4,3960,29,15,2, 4,3968,25,18,14, 4,3976,36,3,1,
 4,3984,19,5,2, 4,3992,27,8,6, 4,4000,31,18,17, 4,4008,24,9,6, 4,4016,33,32,23, 4,4024,16,9,7, 4,4032,15,13,6, 4,4040,29,20,15,
 4,4048,21,5,2, 4,4056,21,17,6, 4,4064,33,29,7, 4,4072,13,10,6, 4,4080,15,9,6, 4,4088,15,7,2, 4,4096,27,15,1, 4,4104,30,13,3,
 4,4112,23,12,1, 4,4120,26,17,9, 4,4128,31,2,1, 4,4136,31,29,15, 4,4144,15,10,1, 4,4152,25,13,3, 4,4160,27,18,12, 4,4168,17,10,6,
 4,4176,26,15,5, 4,4184,29,15,7, 4,4192,15,11,5, 4,4200,12,5,2, 4,4208,15,6,3, 4,4216,13,3,2, 4,4224,8,3,2, 4,4232,18,13,7,
 4,4240,31,6,1, 4,4248,11,6,2, 4,4256,15,13,8, 4,4264,15,14,5, 4,4272,11,8,1, 4,4280,17,14,5, 4,4288,5,4,3, 4,4296,14,5,2,
 4,4304,12,7,2, 4,4312,21,5,2, 4,4320,21,20,14, 4,4328,20,17,15, 4,4336,18,11,5, 4,4344,8,7,5, 4,4352,33,27,20, 4,4360,21,4,2,
 4,4368,27,12,6, 4,4376,18,7,1, 4,4384,27,19,17, 4,4392,20,19,5, 4,4400,37,35,3, 4,4408,9,8,7, 4,4416,31,10,6, 4,4424,21,19,13,
 4,4432,25,5,3, 4,4440,26,21,14, 4,4448,11,9,8, 4,4456,24,9,7, 4,4464,13,3,1, 4,4472,30,7,2, 4,4480,28,21,15, 4,4488,38,35,13,
 4,4496,17,10,7, 4,4504,12,9,6, 4,4512,12,3,1, 4,4520,39,25,23, 4,4528,23,13,9, 4,4536,25,11,7, 4,4544,25,14,7, 4,4552,34,27,18,
 4,4560,14,13,7, 4,4568,22,17,6, 4,4576,26,19,9, 4,4584,19,15,9, 4,4592,21,16,11, 4,4600,17,14,1, 4,4608,23,20,13, 4,4616,27,23,5,
 4,4624,26,23,10, 4,4632,19,16,2, 4,4640,25,8,7, 4,4648,8,5,3, 4,4656,27,25,4, 4,4664,37,6,5, 4,4672,27,25,23, 4,4680,10,9,3,
 4,4688,13,7,6, 4,4696,18,17,11, 4,4704,11,8,1, 4,4712,25,16,6, 4,4720,24,19,9, 4,4728,26,21,14, 4,4736,15,10,1, 4,4744,19,14,6,
 4,4752,29,5,2, 4,4760,28,11,9, 4,4768,25,17,3, 4,4776,27,23,6, 4,4784,30,29,7, 4,4792,29,18,4, 4,4800,29,19,11, 4,4808,13,4,2,
 4,4816,33,31,25, 4,4824,25,16,3, 4,4832,33,30,5, 4,4840,25,21,2, 4,4848,28,27,6, 4,4856,27,23,21, 4,4864,29,22,17, 4,4872,24,9,2,
 4,4880,32,21,7, 4,4888,35,21,8, 4,4896,21,19,12, 4,4904,27,18,15, 4,4912,30,29,7, 4,4920,11,9,5, 4,4928,29,9,3, 4,4936,27,22,15,
 4,4944,19,6,4, 4,4952,29,11,5, 4,4960,25,20,6, 4,4968,26,25,17, 4,4976,42,7,1, 4,4984,23,16,9, 4,4992,15,8,6, 4,5000,17,15,7,
 4,5008,21,10,3, 4,5016,15,12,9, 4,5024,33,23,14, 4,5032,25,6,2, 4,5040,24,5,3, 4,5048,34,15,10, 4,5056,22,9,6, 4,5064,21,12,11,
 4,5072,25,5,3, 4,5080,21,7,6, 4,5088,22,21,3, 4,5096,19,18,13, 4,5104,30,13,2, 4,5112,42,33,9, 4,5120,33,27,5, 4,5128,24,15,6,
 4,5136,27,25,4, 4,5144,15,11,5, 4,5152,15,8,1, 4,5160,35,31,13, 4,5168,15,11,5, 4,5176,24,21,3, 4,5184,20,11,5, 4,5192,11,8,2,
 4,5200,33,27,19, 4,5208,23,22,2, 4,5216,27,19,2, 4,5224,29,15,1, 4,5232,21,11,2, 4,5240,33,27,21, 4,5248,27,18,1, 4,5256,9,5,2,
 4,5264,16,11,9, 4,5272,29,18,10, 4,5280,13,11,1, 4,5288,11,10,1, 4,5296,8,3,2, 4,5304,27,6,5, 4,5312,22,3,2, 4,5320,19,17,3,
 4,5328,30,27,9, 4,5336,23,21,8, 4,5344,17,11,10, 4,5352,23,20,1, 4,5360,19,11,1, 4,5368,19,18,3, 4,5376,7,4,1, 4,5384,17,15,4,
 4,5392,7,3,2, 4,5400,33,17,3, 4,5408,30,23,1, 4,5416,34,31,19, 4,5424,16,15,13, 4,5432,37,34,23, 4,5440,24,15,10, 4,5448,43,33,15,
 4,5456,21,14,10, 4,5464,15,5,2, 4,5472,21,15,3, 4,5480,13,10,3, 4,5488,21,19,9, 4,5496,13,11,4, 4,5504,20,19,1, 4,5512,13,11,6,
 4,5520,10,5,2, 4,5528,25,18,14, 4,5536,20,5,3, 4,5544,11,10,2, 4,5552,15,9,8, 4,5560,55,46,10, 4,5568,33,22,7, 4,5576,27,23,6,
 4,5584,13,9,7, 4,5592,29,20,7, 4,5600,8,5,3, 4,5608,22,5,2, 4,5616,30,15,6, 4,5624,21,18,14, 4,5632,17,15,5, 4,5640,29,27,23,
 4,5648,21,15,8, 4,5656,27,12,9, 4,5664,31,29,11, 4,5672,26,25,10, 4,5680,40,17,2, 4,5688,41,20,11, 4,5696,26,21,14, 4,5704,27,25,14,
 4,5712,10,9,3, 4,5720,32,11,2, 4,5728,25,24,7, 4,5736,25,18,10, 4,5744,21,11,8, 4,5752,21,20,7, 4,5760,29,23,10, 4,5768,21,14,3,
 4,5776,19,12,1, 4,5784,25,22,6, 4,5792,33,13,11, 4,5800,25,7,6, 4,5808,43,10,1, 4,5816,17,15,7, 4,5824,23,17,10, 4,5832,21,18,13,
 4,5840,23,14,2, 4,5848,19,8,6, 4,5856,23,15,6, 4,5864,27,11,10, 4,5872,19,15,10, 4,5880,21,10,3, 4,5888,23,10,4, 4,5896,30,23,1,
 4,5904,32,19,5, 4,5912,33,22,13, 4,5920,16,15,6, 4,5928,16,7,2, 4,5936,27,4,1, 4,5944,23,21,14, 4,5952,25,23,2, 4,5960,37,35,25,
 4,5968,21,14,4, 4,5976,18,9,6, 4,5984,17,7,1, 4,5992,29,9,2, 4,6000,23,21,12, 4,6008,30,27,15, 4,6016,35,34,2, 4,6024,39,33,26,
 4,6032,44,21,14, 4,6040,25,11,5, 4,6048,17,15,8, 4,6056,7,6,1, 4,6064,23,18,11, 4,6072,28,15,13, 4,6080,19,8,6, 4,6088,23,10,3,
 4,6096,20,11,2, 4,6104,13,11,6, 4,6112,35,12,1, 4,6120,4,3,1, 4,6128,34,15,2, 4,6136,17,7,5, 4,6144,26,7,1, 4,6152,28,27,13,
 4,6160,38,15,10, 4,6168,20,11,2, 4,6176,29,15,1, 4,6184,39,13,12, 4,6192,20,5,2, 4,6200,29,10,7, 4,6208,25,23,14, 4,6216,39,30,9,
 4,6224,13,4,2, 4,6232,17,3,1, 4,6240,11,10,2, 4,6248,18,7,2, 4,6256,11,10,5, 4,6264,17,16,7, 4,6272,17,10,6, 4,6280,9,7,5,
 4,6288,34,25,5, 4,6296,35,19,10, 4,6304,13,3,1, 4,6312,35,33,14, 4,6320,29,28,10, 4,6328,15,6,1, 4,6336,22,15,9, 4,6344,21,15,2,
 4,6352,21,11,4, 4,6360,13,11,1, 4,6368,31,9,1, 4,6376,28,27,5, 4,6384,34,29,7, 4,6392,39,34,10, 4,6400,37,12,3, 4,6408,31,12,10,
 4,6416,29,15,7, 4,6424,29,18,5, 4,6432,26,13,7, 4,6440,21,18,14, 4,6448,25,23,8, 4,6456,31,25,17, 4,6464,25,22,6, 4,6472,31,30,2,
 4,6480,11,10,1, 4,6488,21,13,7, 4,6496,21,5,2, 4,6504,23,15,9, 4,6512,29,27,13, 4,6520,37,29,11, 4,6528,16,7,2, 4,6536,25,10,9,
 4,6544,19,15,1, 4,6552,27,22,6, 4,6560,19,13,11, 4,6568,19,15,1, 4,6576,27,25,19, 4,6584,37,23,7, 4,6592,45,42,1, 4,6600,21,19,16,
 4,6608,9,4,2, 4,6616,33,9,3, 4,6624,15,14,9, 4,6632,27,20,17, 4,6640,43,32,9, 4,6648,25,19,16, 4,6656,19,15,1, 4,6664,24,15,6,
 4,6672,26,21,5, 4,6680,29,7,3, 4,6688,55,32,9, 4,6696,45,19,7, 4,6704,11,10,6, 4,6712,31,26,2, 4,6720,12,9,7, 4,6728,21,8,2,
 4,6736,27,14,2, 4,6744,29,21,15, 4,6752,11,8,2, 4,6760,37,15,7, 4,6768,18,15,10, 4,6776,25,11,6, 4,6784,16,15,1, 4,6792,27,25,24,
 4,6800,26,25,1, 4,6808,37,19,13, 4,6816,22,5,2, 4,6824,21,14,10, 4,6832,35,32,25, 4,6840,14,9,3, 4,6848,29,22,18, 4,6856,30,29,17,
 4,6864,11,5,2, 4,6872,25,13,2, 4,6880,31,30,19, 4,6888,24,11,9, 4,6896,29,17,11, 4,6904,36,13,11, 4,6912,25,15,12, 4,6920,8,3,1,
 4,6928,8,7,5, 4,6936,37,31,30, 4,6944,23,21,8, 4,6952,32,21,19, 4,6960,14,9,3, 4,6968,35,32,17, 4,6976,19,18,9, 4,6984,8,3,2,
 4,6992,27,11,9, 4,7000,27,26,11, 4,7008,33,25,6, 4,7016,23,10,7, 4,7024,22,15,10, 4,7032,19,13,9, 4,7040,19,18,7, 4,7048,39,17,4,
 4,7056,27,24,10, 4,7064,11,5,2, 4,7072,37,26,17, 4,7080,27,18,16, 4,7088,32,5,2, 4,7096,27,17,13, 4,7104,15,10,4, 4,7112,35,5,2,
 4,7120,17,15,5, 4,7128,19,13,2, 4,7136,16,3,2, 4,7144,33,13,3, 4,7152,37,23,16, 4,7160,27,26,9, 4,7168,13,10,6, 4,7176,33,31,21,
 4,7184,33,27,2, 4,7192,29,14,6, 4,7200,29,23,3, 4,7208,29,23,21, 4,7216,15,8,1, 4,7224,15,12,10, 4,7232,35,12,9, 4,7240,33,14,2,
 4,7248,17,7,4, 4,7256,22,21,7, 4,7264,41,36,19, 4,7272,23,10,4, 4,7280,37,6,4, 4,7288,25,23,17, 4,7296,37,7,2, 4,7304,37,30,17,
 4,7312,25,24,3, 4,7320,35,28,10, 4,7328,41,30,26, 4,7336,34,21,5, 4,7344,33,28,3, 4,7352,20,5,3, 4,7360,23,18,2, 4,7368,19,13,11,
 4,7376,41,22,16, 4,7384,31,26,9, 4,7392,33,27,21, 4,7400,19,9,5, 4,7408,13,3,1, 4,7416,35,23,9, 4,7424,18,13,7, 4,7432,30,19,7,
 4,7440,22,21,15, 4,7448,21,20,14, 4,7456,27,8,1, 4,7464,21,18,14, 4,7472,23,13,7, 4,7480,32,15,2, 4,7488,21,16,6, 4,7496,23,21,12,
 4,7504,45,17,2, 4,7512,22,21,3, 4,7520,19,9,7, 4,7528,18,13,1, 4,7536,42,21,14, 4,7544,23,13,7, 4,7552,17,8,3, 4,7560,41,21,3,
 4,7568,15,5,3, 4,7576,41,40,11, 4,7584,51,46,10, 4,7592,45,10,1, 4,7600,19,18,2, 4,7608,39,25,10, 4,7616,31,21,14, 4,7624,9,2,1,
 4,7632,54,3,2, 4,7640,29,3,2, 4,7648,37,33,10, 4,7656,30,13,7, 4,7664,30,23,5, 4,7672,39,5,1, 4,7680,27,9,3, 4,7688,35,16,6,
 4,7696,17,16,15, 4,7704,15,12,10, 4,7712,27,22,5, 4,7720,27,25,4, 4,7728,21,6,3, 4,7736,22,11,3, 4,7744,33,28,27, 4,7752,35,30,2,
 4,7760,32,23,21, 4,7768,27,18,15, 4,7776,41,39,36, 4,7784,7,4,2, 4,7792,47,31,29, 4,7800,11,10,5, 4,7808,25,24,10, 4,7816,20,3,2,
 4,7824,39,36,14, 4,7832,37,19,3, 4,7840,33,29,23, 4,7848,34,31,21, 4,7856,12,3,2, 4,7864,19,13,1, 4,7872,27,22,18, 4,7880,25,19,17,
 4,7888,12,9,7, 4,7896,45,39,7, 4,7904,45,34,25, 4,7912,7,3,2, 4,7920,20,19,5, 4,7928,23,15,5, 4,7936,40,23,21, 4,7944,14,7,1,
 4,7952,19,13,2, 4,7960,19,13,12, 4,7968,27,13,12, 4,7976,44,5,3, 4,7984,37,18,2, 4,7992,26,25,17, 4,8000,16,3,1, 4,8008,23,22,17,
 4,8016,31,30,25, 4,8024,21,14,11, 4,8032,19,15,13, 4,8040,39,13,7, 4,8048,30,23,3, 4,8056,27,16,5, 4,8064,27,23,9, 4,8072,23,11,6,
 4,8080,39,14,11, 4,8088,25,10,8, 4,8096,32,11,2, 4,8104,30,23,17, 4,8112,15,12,2, 4,8120,8,3,2, 4,8128,25,24,19, 4,8136,11,3,2,
 4,8144,28,27,17, 4,8152,29,25,14, 4,8160,52,45,10, 4,8168,25,16,6, 4,8176,43,32,21, 4,8184,32,27,6, 4,8192,9,5,2, 4,8200,18,15,3,
 4,8208,19,13,11, 4,8216,27,24,17, 4,8224,39,36,25, 4,8232,22,15,9, 4,8240,14,13,7, 4,8248,25,15,13, 4,8256,32,21,14, 4,8264,15,6,3,
 4,8272,32,25,23, 4,8280,30,19,9, 4,8288,27,5,4, 4,8296,37,19,6, 4,8304,32,17,15, 4,8312,45,44,30, 4,8320,41,39,5, 4,8328,37,23,14,
 4,8336,33,10,2, 4,8344,27,15,1, 4,8352,35,18,14, 4,8360,15,14,5, 4,8368,35,17,4, 4,8376,45,39,17, 4,8384,19,4,2, 4,8392,17,11,1,
 4,8400,29,28,11, 4,8408,20,9,2, 4,8416,40,33,22, 4,8424,33,31,28, 4,8432,17,15,13, 4,8440,18,9,6, 4,8448,21,17,6, 4,8456,15,13,8,
 4,8464,34,15,5, 4,8472,30,21,5, 4,8480,21,6,3, 4,8488,13,6,3, 4,8496,25,19,3, 4,8504,35,24,10, 4,8512,33,27,4, 4,8520,28,15,13,
 4,8528,15,4,2, 4,8536,19,10,3, 4,8544,31,5,2, 4,8552,29,10,1, 4,8560,21,13,3, 4,8568,28,25,10, 4,8576,19,9,1, 4,8584,32,15,13,
 4,8592,23,5,4, 4,8600,21,14,3, 4,8608,47,44,33, 4,8616,22,19,11, 4,8624,4,3,2, 4,8632,41,32,3, 4,8640,23,10,4, 4,8648,31,17,6,
 4,8656,39,14,4, 4,8664,29,19,11, 4,8672,29,23,12, 4,8680,32,7,2, 4,8688,25,20,7, 4,8696,25,20,6, 4,8704,39,20,2, 4,8712,30,13,3,
 4,8720,27,17,5, 4,8728,13,7,1, 4,8736,35,33,24, 4,8744,45,12,11, 4,8752,30,29,11, 4,8760,27,9,4, 4,8768,27,10,8, 4,8776,26,19,9,
 4,8784,26,25,7, 4,8792,24,9,2, 4,8800,25,14,6, 4,8808,15,9,6, 4,8816,17,8,6, 4,8824,19,14,6, 4,8832,15,9,6, 4,8840,33,22,16,
 4,8848,33,4,3, 4,8856,14,5,2, 4,8864,37,12,7, 4,8872,51,4,2, 4,8880,36,9,6, 4,8888,43,13,9, 4,8896,41,10,6, 4,8904,40,25,10,
 4,8912,18,17,1, 4,8920,33,32,31, 4,8928,35,29,2, 4,8936,17,3,1, 4,8944,39,34,1, 4,8952,27,14,2, 4,8960,12,7,5, 4,8968,29,11,10,
 4,8976,23,8,2, 4,8984,9,8,6, 4,8992,35,6,2, 4,9000,28,19,17, 4,9008,31,17,7, 4,9016,23,21,8, 4,9024,32,29,11, 4,9032,45,19,1,
 4,9040,9,6,4, 4,9048,23,16,10, 4,9056,11,3,2, 4,9064,33,4,2, 4,9072,45,38,6, 4,9080,17,10,7, 4,9088,33,31,1, 4,9096,27,26,11,
 4,9104,47,33,24, 4,9112,9,7,5, 4,9120,35,25,5, 4,9128,39,25,22, 4,9136,21,14,1, 4,9144,35,25,4, 4,9152,33,29,7, 4,9160,22,15,3,
 4,9168,15,10,4, 4,9176,43,37,30, 4,9184,33,26,14, 4,9192,21,18,13, 4,9200,31,24,2, 4,9208,35,10,9, 4,9216,21,14,8, 4,9224,35,21,7,
 4,9232,49,18,8, 4,9240,17,11,7, 4,9248,37,18,13, 4,9256,19,6,4, 4,9264,39,17,14, 4,9272,13,4,3, 4,9280,23,7,2, 4,9288,49,43,18,
 4,9296,29,17,15, 4,9304,27,13,9, 4,9312,21,19,16, 4,9320,55,22,8, 4,9328,21,14,8, 4,9336,17,5,3, 4,9344,51,44,5, 4,9352,31,26,15,
 4,9360,28,23,1, 4,9368,38,7,1, 4,9376,23,5,1, 4,9384,17,11,6, 4,9392,29,24,11, 4,9400,18,13,1, 4,9408,28,15,6, 4,9416,19,11,6,
 4,9424,22,9,6, 4,9432,52,43,25, 4,9440,25,22,14, 4,9448,23,21,20, 4,9456,35,19,5, 4,9464,37,18,13, 4,9472,45,40,15, 4,9480,18,9,2,
 4,9488,25,12,7, 4,9496,29,17,15, 4,9504,19,15,6, 4,9512,39,17,16, 4,9520,13,5,2, 4,9528,37,33,22, 4,9536,31,26,6, 4,9544,43,32,9,
 4,9552,11,4,1, 4,9560,27,13,2, 4,9568,49,26,14, 4,9576,29,25,7, 4,9584,36,29,27, 4,9592,15,8,1, 4,9600,19,6,4, 4,9608,14,13,1,
 4,9616,25,8,2, 4,9624,31,17,7, 4,9632,30,23,5, 4,9640,33,7,3, 4,9648,31,24,21, 4,9656,19,16,2, 4,9664,35,21,1, 4,9672,17,9,3,
 4,9680,25,6,2, 4,9688,20,9,2, 4,9696,36,27,21, 4,9704,7,3,2, 4,9712,27,19,17, 4,9720,37,4,2, 4,9728,30,5,2, 4,9736,15,7,6,
 4,9744,36,9,2, 4,9752,42,17,3, 4,9760,56,49,47, 4,9768,41,23,22, 4,9776,24,19,1, 4,9784,38,37,9, 4,9792,27,26,21, 4,9800,42,41,10,
 4,9808,43,32,21, 4,9816,46,33,22, 4,9824,13,10,3, 4,9832,39,37,25, 4,9840,49,47,13, 4,9848,25,23,10, 4,9856,36,15,1, 4,9864,35,32,21,
 4,9872,13,11,3, 4,9880,35,28,5, 4,9888,33,6,4, 4,9896,39,38,26, 4,9904,21,10,2, 4,9912,42,35,15, 4,9920,49,18,14, 4,9928,39,38,31,
 4,9936,22,21,1, 4,9944,15,14,6, 4,9952,31,30,11, 4,9960,30,15,10, 4,9968,36,3,2, 4,9976,21,19,5, 4,9984,27,10,7, 4,9992,7,4,2,
 4,10000,19,13,9,
 0
};
# 545 "lib_sss.c" 2

 uint16_t *c;
 int i;

 c=(uint16_t*) coeffs;
 while (*c) {
  if (d==c[1]) {
   if (p) {
    for (i=1; i<=c[0]; i++) lsss_zX_setbit(p, c[i]);
    lsss_zX_setbit(p,0);
   }
   return 0;
  }
  if (d<c[1]) {
   return c[1];
  }
  c+=c[0]+1;
 }
 return -1;
}
# 576 "lib_sss.c"
void lsss_GF2n_eval_poly(lsss_z *coef, int thresh, lsss_z *x, lsss_z *r, lsss_z *base, int size) {
 int i;
 lsss_z *temp;
 temp = 
# 579 "lib_sss.c" 3 4
       __builtin_alloca (
# 579 "lib_sss.c"
       2*8*size
# 579 "lib_sss.c" 3 4
       )
# 579 "lib_sss.c"
                       ;
 memcpy(r, &coef[(thresh-1)*size], size*8);
 for (i=thresh-2; i>=0; i--) {
  lsss_zX_mul(temp, r, x, size, base);
  lsss_zX_add(r, &coef[i*size], temp, size);
 }
 memset(temp, 0, 2*8*size);
}







lsss_ctx *lsss_new(int bits, int thresh, int *err) {
 int s;
 size_t l1;
 lsss_ctx *r;
 void *p;
 uint64_t c;

 if (err) *err = 0;

 s = 1+((bits+63)>>6);


 l1 = sizeof(lsss_ctx);
 l1+= 8*s*thresh;
 l1+= 8*s*thresh;
 l1+= 8*thresh;
 l1+= 8*s;
 l1+= 8;

 c = (uint64_t)
# 613 "lib_sss.c" 3 4
              __builtin_alloca (
# 613 "lib_sss.c"
              8
# 613 "lib_sss.c" 3 4
              )
# 613 "lib_sss.c"
                       ;
 c = c ^ 0xbf5c310e2ab3e77b;

 r=malloc(l1);
 if (r==
# 617 "lib_sss.c" 3 4
       ((void *)0)
# 617 "lib_sss.c"
           ) {
  if (err) *err = 1;
  return 
# 619 "lib_sss.c" 3 4
        ((void *)0)
# 619 "lib_sss.c"
            ;
 }
 memset(r, 0, l1);
 r->meml = l1;
 r->bits = bits;
 r->thresh = thresh;
 r->size = s;

 p=r;
 p=(char*)p + sizeof(lsss_ctx);
 r->coeffs = p; p=(char*)p +8*s*thresh;
 r->parts = p; p=(char*)p +8*s*thresh;
 r->xparts= p; p=(char*)p +8*thresh;
 r->base=p; p=(char*)p +8*s;
 if (lsss_zX_irreductible(r->base, bits)) {

  if (err) *err = 2;
  free(r);
  return 
# 637 "lib_sss.c" 3 4
        ((void *)0)
# 637 "lib_sss.c"
            ;
 }

 r->canary3 = p;

 r->canary1 = c;
 r->canary2 = c;
 *(r->canary3) = c;
 r->recoef = 
# 645 "lib_sss.c" 3 4
            0
# 645 "lib_sss.c"
                 ;

 return r;
}




void lsss_free(lsss_ctx *ctx) {
 size_t l;
 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();
 l=ctx->meml;
 memset(ctx, 0, l);
 free(ctx);
}






void lsss_set_secret(lsss_ctx *ctx, void *secret) {
 int s, i;


 s = (ctx->bits+7)>>3;
 memcpy(&ctx->coeffs[0], secret, s);


 for (i=1; i<ctx->thresh; i++) {
  *(lsss_z*) (&ctx->coeffs[i*ctx->size]) =1;
  lsss_zX_random(&ctx->coeffs[i*ctx->size], ctx->bits);
 }
 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();
}






void lsss_get_part(lsss_ctx *ctx, void *part, uint64_t number) {
 lsss_z *x, *r;
 x=
# 690 "lib_sss.c" 3 4
  __builtin_alloca (
# 690 "lib_sss.c"
  ctx->size*8
# 690 "lib_sss.c" 3 4
  )
# 690 "lib_sss.c"
                     ;
 r=
# 691 "lib_sss.c" 3 4
  __builtin_alloca (
# 691 "lib_sss.c"
  ctx->size*8
# 691 "lib_sss.c" 3 4
  )
# 691 "lib_sss.c"
                     ;
 memset(x, 0, ctx->size*8);
 x[0] = (lsss_z)number;
 lsss_GF2n_eval_poly(ctx->coeffs, ctx->thresh, x, r , ctx->base, ctx->size);
 memcpy(part, r, (ctx->bits+7)>>3);



 memset(x, 0, ctx->size*8);
 memset(r, 0, ctx->size*8);
 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();
}







int lsss_missing_parts(lsss_ctx *ctx) {
 return ctx->thresh - ctx->nparts;
}







int lsss_set_part(lsss_ctx *ctx, void *part, uint64_t number) {
 void *dest;
 int i;


 if (ctx->nparts >= ctx->thresh) return 3;


 for (i=0; i<ctx->nparts; i++) {
  if (ctx->xparts[i] == number) {
   return 5;
  }
 }
 dest = ((char*)ctx->parts) + ((ctx->nparts)*(ctx->size)*8);
 memset(dest, 0, ctx->size*8);
 memcpy(dest, part, (ctx->bits+7)>>3 );
 ctx->xparts[ctx->nparts] = (uint64_t) number;
 ctx->nparts++;

 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();

 return 0;
}
# 759 "lib_sss.c"
int lsss_combine(lsss_ctx *ctx) {







 void *matrice, *ligne_temp;
 lsss_z *inv,*pro, *cd;
 size_t size_matrice;
 int l,c,ll, found;

 size_matrice = ctx->size * ctx->thresh * (ctx->thresh+1) *8;
 matrice = 
# 773 "lib_sss.c" 3 4
          __builtin_alloca (
# 773 "lib_sss.c"
          size_matrice
# 773 "lib_sss.c" 3 4
          )
# 773 "lib_sss.c"
                              ;
 inv = 
# 774 "lib_sss.c" 3 4
      __builtin_alloca (
# 774 "lib_sss.c"
      (ctx->size)*8
# 774 "lib_sss.c" 3 4
      )
# 774 "lib_sss.c"
                 ;
 pro = 
# 775 "lib_sss.c" 3 4
      __builtin_alloca (
# 775 "lib_sss.c"
      (ctx->size)*2*8
# 775 "lib_sss.c" 3 4
      )
# 775 "lib_sss.c"
                   ;
 ligne_temp=
# 776 "lib_sss.c" 3 4
           __builtin_alloca (
# 776 "lib_sss.c"
           (ctx->size)*8*(ctx->thresh+1)
# 776 "lib_sss.c" 3 4
           )
# 776 "lib_sss.c"
                                      ;
 cd = 
# 777 "lib_sss.c" 3 4
     __builtin_alloca (
# 777 "lib_sss.c"
     (ctx->size)*8
# 777 "lib_sss.c" 3 4
     )
# 777 "lib_sss.c"
                ;
 memset(matrice, 0, size_matrice);
 memset(inv, 0, (ctx->size)*8);


 for (l=0; l<ctx->thresh; l++) {
  memcpy(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1) + 8*ctx->size*ctx->thresh)), (char*)ctx->parts + l*8*(ctx->size), 8*(ctx->size));
 }


 for (l=0; l<ctx->thresh; l++) {

  *(lsss_z*)((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(ctx->thresh-1)*8*ctx->size)) = 1;


  memset(cd, 0, (ctx->size)*8);
  cd[0] = *(ctx->xparts + l);


  for (c=ctx->thresh-2; c>=0; c--) {
   lsss_zX_mul(pro, cd, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c+1)*8*ctx->size)), (ctx->size), ctx->base);
   memcpy(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), pro, 8*(ctx->size));
  }
 }


 for (l=0; l<ctx->thresh; l++) {

  if (lsss_zX_est0(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), (ctx->size))) {

   found=-1;
   for (ll=l+1; ll<ctx->thresh; ll++) {
    if (lsss_zX_est0(((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), (ctx->size))==0) {
     found=ll;
     break;
    }
   }
   if (found==-1) {
    return 6;
   }

   memcpy(ligne_temp, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(0)*8*ctx->size)), (ctx->size)*8*(ctx->thresh+1));
   memcpy(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(0)*8*ctx->size)), ((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(0)*8*ctx->size)), (ctx->size)*8*(ctx->thresh+1));
   memcpy(((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(0)*8*ctx->size)), ligne_temp, (ctx->size)*8*(ctx->thresh+1));
  }
  lsss_zXP_inverse(inv, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), ctx->base, (ctx->size));



  for (c=l; c<=ctx->thresh; c++) {
   lsss_zX_mul(pro, inv, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), (ctx->size), ctx->base);
   memcpy(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), pro, 8*(ctx->size));
  }


  for (ll=l+1; ll<ctx->thresh; ll++) {
   memcpy(cd, ((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), (ctx->size)*8);
   for (c=l; c<=ctx->thresh; c++) {
    lsss_zX_mul(pro, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), cd, (ctx->size), ctx->base);
    lsss_zX_add(((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), ((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), pro, (ctx->size));
   }
  }

 }




 if ((ctx->recoef) && (ctx->thresh>1)) {
  for (l=ctx->thresh-1; l>0; l--) {
   if (!lsss_zX_est1(((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), (ctx->size))) {

    return 6;
   }




   for (ll=0; ll<l; ll++) {
    memcpy(cd, ((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(l)*8*ctx->size)), (ctx->size)*8);
    for (c=l; c<=ctx->thresh; c++) {
     lsss_zX_mul(pro, ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), cd, (ctx->size), ctx->base);
     lsss_zX_add(((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), ((void*)((char*)matrice + (ll)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size)), pro, (ctx->size));
    }
   }

  }
  for (l=ctx->thresh-1; l>=0; l--) memcpy(&ctx->coeffs[0]+(ctx->size)*l, ((void*)((char*)matrice + (ctx->thresh-1-l)*8*ctx->size*(ctx->thresh+1) + 8*ctx->size*ctx->thresh)), 8*(ctx->size));
 } else {
  memcpy(&ctx->coeffs[0], ((void*)((char*)matrice + (ctx->thresh-1)*8*ctx->size*(ctx->thresh+1) + 8*ctx->size*ctx->thresh)), 8*(ctx->size));
 }


 memset(matrice, 0, size_matrice);
 memset(inv, 0, (ctx->size)*8);
 memset(pro, 0, (ctx->size)*2*8);
 memset(ligne_temp, 0, (ctx->size)*8*(ctx->thresh+1));
 memset(cd, 0, (ctx->size)*8);

 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();

 return 0;
}







void lsss_get_secret(lsss_ctx *ctx, void *secret) {
 memcpy(secret, &ctx->coeffs[0], (ctx->bits+7)>>3);
 if (ctx->canary1 != ctx->canary2) abort();
 if (ctx->canary2 != *(ctx->canary3)) abort();
}







void lsss_register_random_source(lsss_random_source_t source) {
 lsss_random_source=source;
}
