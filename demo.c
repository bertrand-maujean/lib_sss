/*  demo program for lib_sss
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

\file Demonstration application for lib_sss
*/

#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <sys/time.h>

#include "lib_sss.h"

#define MIN_THRESH 2
#define MAX_THRESH 20
#define MAX_PARTS  50


/********************************************************************
 * base64 handling (from an other little project)
 ********************************************************************/
#define LB64_INVALID_CODE 64
#define LB64_PADDING_CHAR 65
#define LB64_SPACE_CHAR 66
#define LB64_UNEXPECTED_END 2
#define LB64_OK 0

char *lb64_bin2string(const char* dest, unsigned char *source, size_t len, int *err);
unsigned char *lb64_string2bin(unsigned char *dest, size_t *decoded_len_, size_t max_len, char *source, int *err);
 
static unsigned char *lb64_base = (unsigned char *)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
unsigned char *lb64_reverse = NULL; // table de lookup inverse, 256 entrées

/** \brief Encode a binary object into a printable base-64 narrow string
 * \note :
 * - 'dest' buffer is allocated if NULL, and return as return value. If dest is not NULL, it must be large enough
 * - Allocated size may be a bit larger than necessary
 * - err is optional, can be NULL 
 * - dest is an asciiz string, source is a buffer/len byte array
 */
char *lb64_bin2string(const char* dest, unsigned char *source, size_t len, int *err_) {
	int nb_triplets = (len+2)/3; // Nombre total de triplets, dont le dernier sera éventuellement tronqué = nombre de blocs de 4 en sortie
	
	unsigned char a,b,c;
	uint8_t w,x,y,z;
	int err=LB64_OK;
	
	char *d;
	if (dest == NULL) {
		d = (char*)malloc((len+2)*4/3);
		memset (d, 0, (len+2)*4/3 );
	} else {
		d = (char*)dest;
	}
	char* rd=d;

	w=x=y=z=0;
	for (int i=0; i<nb_triplets; i++) {
		a =                source[3*i];
		b = (3*i+1<len) ? (source[3*i+1]) : (0);
		c = (3*i+2<len) ? (source[3*i+2]) : (0);	
	
		w = a >> 2;
		x = ((a & 3) << 4) | (b >> 4);
		y = ((b & 15) << 2) | ((c & 192) >> 6);
		z = c & 63;

		//if ((w|x|y|z)>63) abort();
		if (z>63) abort();
		if (y>63) abort();
		if (x>63) abort();
		if (w>63) abort();

		*d = lb64_base[w]; d++;
		*d = lb64_base[x]; d++;
		*d = (3*i+1 < len) ? lb64_base[y] : '='; d++;
		*d = (3*i+2 < len) ? lb64_base[z] : '='; d++;
	}

	*d=0; 
	if (err_) *err_=err;
	return rd;
}


void lb64_build_reverse() {
	if (lb64_reverse) return;
	lb64_reverse = (unsigned char*) malloc(256*sizeof(lb64_reverse[0]));

	for (int i=0; i<256; i++) {
		lb64_reverse[i] = LB64_INVALID_CODE;
	}

	for (int i=0; i<64; i++) {
		lb64_reverse[ lb64_base[i] ] = i;
	}

	lb64_reverse[ '=' ] = LB64_PADDING_CHAR;
	lb64_reverse[ ' ' ] = LB64_SPACE_CHAR;
	lb64_reverse[ '\n' ] = LB64_SPACE_CHAR;
	lb64_reverse[ '\r' ] = LB64_SPACE_CHAR;
}

/** \brief 
 * \note :
 * - 
 * - En cas d'erreur, les données éventuellement décodées restent disponibles. Il faut éventuellement libérer la mémoire allouée
 */
unsigned char *lb64_string2bin(unsigned char *dest, size_t *decoded_len_, size_t max_len, char *source, int *err_) {
	lb64_build_reverse();

	int source_len = strlen(source);
	bool malloced=false;
	size_t decoded_len=0;

	int err = LB64_OK;

	if (dest == NULL) {
		size_t malloc_size = (strlen(source)+3)*3/4;
		dest = (unsigned char*) malloc(malloc_size);
		memset(dest, 0, malloc_size);
		if (max_len > malloc_size) max_len = malloc_size;
		malloced=true;
	}
	unsigned char *d = dest;
	
	uint16_t w,x,y,z;
	unsigned char a,b,c;
	int nout; // nb d'octets en sortie de ce bloc
	char *s=source;

	bool encore=true;
	while ((*s) && (encore)) {
	
		while (lb64_reverse[*s]== LB64_SPACE_CHAR) s++;
		if ((*s) == '\0') { encore=false; break; }
		w = lb64_reverse[ *(s++) ];

		while (lb64_reverse[*s]== LB64_SPACE_CHAR) s++;
		if ((*s) == '\0') { encore=false; err=LB64_UNEXPECTED_END; break; }
		x = lb64_reverse[ *(s++) ];

		while (lb64_reverse[*s]== LB64_SPACE_CHAR) s++;
		if ((*s) == '\0') { encore=false; err=LB64_UNEXPECTED_END; break; }
		y = lb64_reverse[ *(s++) ];

		while (lb64_reverse[*s]== LB64_SPACE_CHAR) s++;
		//if ((*s) == '\0') { encore=false; err=LB64_UNEXPECTED_END; break; }
		z = lb64_reverse[ *(s++) ];
		
		if (( w==LB64_INVALID_CODE) || ( x==LB64_INVALID_CODE) || ( y==LB64_INVALID_CODE) || ( z==LB64_INVALID_CODE) ) {
			err=LB64_INVALID_CODE;
			break;
		}

		if ((w > 66) | (x>66) | (y>66) | (z> 66) ) {
			err=LB64_INVALID_CODE;
			break;
		}

		if (y == LB64_PADDING_CHAR) {
			nout = 1;
			y = 0;
			encore=false;
		} else if (z == LB64_PADDING_CHAR) {
			nout = 2;
			z = 0;
			encore=false;
		} else {
			nout = 3;
		}

		a = (w << 2) | ( x >> 4);
		b = ((x & 15) << 4) | (y >> 2);
		c = ( (y &3) << 6 ) | (z);

		*d=a; d++; nout--; decoded_len++;
		if (decoded_len == max_len) break;
		
		if (nout) {
			*d=b; d++; nout--; decoded_len++;
			if (decoded_len == max_len) break;
			
			if (nout) {
				*d=c; d++; nout--; decoded_len++;
				if (decoded_len == max_len) break;
			}
		}
	}
	if (decoded_len_) *decoded_len_ = decoded_len;
	if (err_) *err_=err;
	return dest;
}




/** 
\brief display an usage notice then exit
*/
void usage(void) {
	puts("demo -t <threshold> -b <bits width> [-p <parts #;parts b64>] [-p other part]");
	puts("	  [-s <secret>] [-g <n>]\n");
	puts("	-t : threshold. Number of parts needed to recover the secret");
	puts("	-b : Width of secret and parts, in bits. To encode an 8-bytes secret, use 64 bits");
	puts("	-p : part given. Used a ';' between x-part (in decimal) and y-part, and no space in between");
	puts("	-s : give the secret (imply splitting operation)");
	puts("	-g : number of parts to generate");

	puts("\nIf '-s' option is given, splitting mode is implied, else recombination");
	puts("'-g' can be used in recombination mode, to generate additional parts");
	puts("\nSee README.md file for more documentation");
	puts("Copyright (C) 2019 Bertrand MAUJEAN, released under AGPL. See LICENSE.txt\n");
	exit(0);
}


/** 

\brief   Extract int/b64 from a part given in a string on command line, and feed the lsss context
\return  non zero if an error occured, and in this case, print the faulty string
*/
int load_part(lsss_ctx *ctx, char *s) {
	char *b64=alloca(strlen(s)+1);
	char *b = alloca(strlen(s)+1); // always wider
	int x;
	sscanf(s, "%d;%s", &x, b64);
	
	//printf("reconnu %d -%s-\n", x, b64);
	int err;
	size_t len;
	lb64_string2bin(b, &len, (strlen(s)+1), b64, &err);
	if (err != LB64_OK) {
		printf("Error parsing base64 '%s'\n", b64);
		return 1; // will abort in main()
	}
	
	err=lsss_set_part(ctx, b, x);
	if (err != LSSS_ERR_NOERR ) {
		printf("lsss_set_part() return error %d. Continuing.\n", err);
	}
	
	return 0;
}

/********************************************************************
 * main program
 ********************************************************************/
 
void main(int argc, char *argv[]) {
	int bits   = -1;
	int thresh = -1;
	int ngen   = 0;             // number of parts to be generated
	int nparts = 0;             // number of parts given on command line
	char *parts_str[MAX_PARTS]; // to retain argv corresponding to given parts 
	char *secret = NULL;
	
	
	// **** Do a basic PRNG seeding 
	// !!! Not cryptographic grade, do not use for real production env !!!
	struct timeval tv;
	gettimeofday(&tv, NULL);
	srand(tv.tv_usec);
	
	
	// **** First stage of command line arguments parsing
	if (argc < 7) {
		puts("Too few arguments given");
		usage();
	}
	for(int i=1; i<argc; i++) {	
		if (strcmp(argv[i], "-t") == 0) {
			i++;
			if (i>=argc) {
				printf("Lacking value after %s argument\nAborting\n\n", argv[i-1]); 
				usage();				
			}
			
			char *end=NULL;
			errno = 0;
			long val = strtol(argv[i], &end, 10);
			if ((errno != 0) || ((end!=NULL)&&(*end!='\0'))) {
				printf("Unexpected value on commande line : %s\nAborting\n\n", argv[i]); 
				usage();
			}
			if ((val<MIN_THRESH) || (val>MAX_THRESH)) {
				printf("Threshold value out of range. Expected %d to %d\nAborting\n\n", MIN_THRESH, MAX_THRESH); 
				usage();				
			}
			thresh=val;
			//printf("Threshold=%d\n", thresh);
		} else if (strcmp(argv[i], "-b") == 0) {
			i++;
			if (i>=argc) {
				printf("Lacking value after %s argument\nAborting\n\n", argv[i-1]); 
				usage();				
			}
			char *end=NULL;
			errno = 0;
			long val = strtol(argv[i], &end, 10);
			if ((errno != 0) || ((end!=NULL)&&(*end!='\0'))) {
				printf("Unexpected value on commande line : %s\nAborting\n\n", argv[i]); 
				usage();
			}
			if (val<8) {
				printf("Bits value must be positive\nAborting\n\n"); 
				usage();				
			}
			bits=val;
			//printf("Bits=%d\n", bits);			
		} else if (strcmp(argv[i], "-p") == 0) {
			i++;
			if (i>=argc) {
				printf("Lacking part after %s argument\nAborting\n\n", argv[i-1]); 
				usage();				
			}
			parts_str[nparts] = argv[i];	
			nparts++;			
		} else if (strcmp(argv[i], "-s") == 0) {
			i++;
			if (i>=argc) {
				printf("Lacking secret after %s argument\nAborting\n\n", argv[i-1]); 
				usage();				
			}
			secret = argv[i];
		} else if (strcmp(argv[i], "-g") == 0) {
			i++;
			if (i>=argc) {
				printf("Lacking value after %s argument\nAborting\n\n", argv[i-1]); 
				usage();				
			}
			char *end=NULL;
			errno = 0;
			long val = strtol(argv[i], &end, 10);
			if ((errno != 0) || ((end!=NULL)&&(*end!='\0'))) {
				printf("Unexpected value on commande line : %s\nAborting\n\n", argv[i]); 
				usage();
			}
			if ((val<1) || (val>MAX_PARTS)) {
				printf("Number of parts to emit value must be positive\nAborting\n\n"); 
				usage();				
			}
			ngen=val;
			//printf("ngen=%d\n", ngen);			
		} else {
			printf("unexpected argument on command line : %s\nAborting\n\n", argv[i]); 
			usage();
		}
		
	}
	
	
	// **** Consistency check of values
	if (thresh == -1) {
		puts("Cannot find threshold value in given arguments\nAborting");
		exit(0);
	}
	if (bits == -1) {
		puts("Cannot find threshold value in given arguments\nAborting");
		exit(0);
	}
	if ((secret != NULL) && (ngen==-1)) {
		puts("You want to split a given secret, but you do not tell how many parts to emit.\nAborting");
		exit(0);		
	}
	if ((secret == NULL) && (nparts < thresh)) {
		printf("You want to recombine a secret with a %d threshold, but gave only %d parts. Impossible!\nAborting.\n", 
			thresh, nparts);
		exit(0);
	}
	if ((secret == NULL) && (nparts > thresh)) {
		printf("More parts given than needed. Will only use the first\n");
	}
	if (secret) if ((strlen(secret)*8) > bits) {
		puts("Secret is too long for given bits width.\nAborting\n");
		exit(0);
	}
	
	
	
	if (secret) {
	// **** Do the splitting job
		printf("Emitting %d parts for '%s' secret, with a %d threshold value and a %d bits width\n",
			ngen,
			secret,
			thresh,
			bits);
		
		int err=0;
		lsss_ctx *ctx = lsss_new(bits, thresh, &err);
		if (err != LSSS_ERR_NOERR) {
			printf("lsss_new() error %d. Aborting\n", err);
			exit(0);
		}
		
		char* s=alloca((bits+7)>>3);
		memset(s, 0, (bits+7)>>3);
		strncpy(s, secret, (bits+7)>>3 ); // note : final \0 can be lost here
		lsss_set_secret(ctx, (void*)s);		
		char *p   = alloca((bits+7)>>3);
		char *b64 = alloca(1+((bits+7)>>2)); // approx : b64 is 2x wider +final  \0
		
		for (int i=0; i<ngen; i++) {
			lsss_get_part(ctx, (void*)p, i+1);	
			lb64_bin2string(b64, p, (bits+7)>>3, NULL); // do not handle error in this direction
			printf("%d;%s\n", i+1, b64);
		}
	
		lsss_free(ctx);
		
	} else {
	// **** Do the recombination job
		int err=0;
		lsss_ctx *ctx = lsss_new(bits, thresh, &err);
		if (err != LSSS_ERR_NOERR) {
			printf("lsss_new() error %d. Aborting\n", err);
			exit(0);
		}

		int i;
		for (i =0; i<thresh; i++) {
			if (load_part(ctx, parts_str[i])) break;
		}
		if (i<thresh) {
			printf("Error reading given parts. Aborting.\n", err);
			exit(0);			
		}
		
		ctx->recoef = true;
		
		err=lsss_combine(ctx);
		if (err != LSSS_ERR_NOERR) {
			printf("lsss_combine() error %d. Aborting\n", err);
			exit(0);
		}
		
		char* s=alloca (1+((bits+7)>>3)); // one larger for \0
		memset(s, 0, 1+((bits+7)>>3) );
		lsss_get_secret(ctx, (void*)s);
		printf("Secret is :\n%s\n", s);
		
		if (ngen != 0) {
			puts("Asked for additionnal parts :");
			char *p   = alloca((bits+7)>>3);
			char *b64 = alloca(1+((bits+7)>>2)); // approx : b64 is 2x wider +final  \0
			for (int i=0; i<ngen; i++) {
				lsss_get_part(ctx, (void*)p, i+1);	
				lb64_bin2string(b64, p, (bits+7)>>3, NULL); // do not handle error in this direction
				printf("%d;%s\n", i+1, b64);
			} 
		}
		lsss_free(ctx);
	}
}
