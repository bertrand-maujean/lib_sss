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
\file test.c 
\brief Consistency and performance check program for lib_sss
*/

#include "lib_sss.h"
#include <time.h>
#include <stdio.h>
#ifdef __linux__
#include <sys/time.h>
#endif
#include <stdio.h>

#define ARRAY_LENGTH(array) (sizeof((array))/sizeof((array)[0]))


/** Testing parameters */

//>>> Size and sharing threshold to test
int bits_a_tester[] = { 64, 128, 256, 384, 512, 768, 1024, 2048/*, 4096, 8192*/ };
int thresh_a_tester[] = { 3, 4, 5 , 6/*, 8, 10*/ };
#define NTESTSP 2 /* number of test loop for each thresh/bits combination in performance test */
#define NTESTSF 100 /* number of tests in fuzzing test */



#ifdef _WIN64

// substitut de gettimeofday() trouvé ici :
// http://mathieuturcotte.ca/textes/windows-gettimeofday/
int gettimeofday(struct timeval* p, void* tz) {
	ULARGE_INTEGER ul; // As specified on MSDN.
	FILETIME ft;

	// Returns a 64-bit value representing the number of
	// 100-nanosecond intervals since January 1, 1601 (UTC).
	GetSystemTimeAsFileTime(&ft);

	// Fill ULARGE_INTEGER low and high parts.
	ul.LowPart = ft.dwLowDateTime;
	ul.HighPart = ft.dwHighDateTime;
	// Convert to microseconds.
	ul.QuadPart /= 10ULL;
	// Remove Windows to UNIX Epoch delta.
	ul.QuadPart -= 11644473600000000ULL;
	// Modulo to retrieve the microseconds.
	p->tv_usec = (long)(ul.QuadPart % 1000000LL);
	// Divide to retrieve the seconds.
	p->tv_sec = (long)(ul.QuadPart / 1000000LL);

	return 0;
}

#endif


/** 
\brief Give the time of day in millisecond from midnight
\return		the time
Based on gettimeofday(), and used for timing tests
*/
uint64_t temps() {
	struct timeval tv;
	gettimeofday(&tv, NULL);
	return (uint64_t)tv.tv_sec*1000 + (tv.tv_usec/1000);
}







/** 
\brief Example of random generator callback to use with lib_sss
\param[out]	dest	destination buffer
\param[in]	n		Number of bytes to generate
Function not used
*/
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



/** 
\brief Print a polynomial in form of hex qwords
\param[in]	poly	The polynomial
\param[in]	size	Size of the polynomial in qwords
Function not used
*/
void lsss_zX_print_hex(lsss_z *poly, int size) {
	int i;
	for (i=size-1; i>=0; i--) {
		printf("0x%016llX ", poly[i]);
	}	
}



/**
\brief Do a test, given bits length and threshold
\param[in] 	bits	Bit width for secret and parts 
\param[in]	thresh	Part threshold
\param[out]	tps_gen	Parts generation time in ms
\param[out]	tps_rec Parts recombination time in ms
*/
void essai_split_combine(int bits, int thresh, int *tps_gen_, int *tps_rec_) {
	uint64_t avant, tps_gen, tps_rec;
	char *secret, *buf;
	lsss_z *part, xpart;
	int  i, err;	
	lsss_ctx *ctx_split, *ctx_combine;
	
	
	// Choisit un secret
	secret = alloca(1256);			// maximum de ce qu'on sait faire avec 10000 bits
	//memset(secret, 0, 1256);
	//strncpy(secret, secret_const, (bits+7)>>3); // recopie le début du secret
	random_bytes(secret, 1256);
	
	
	// Crée un contexte lsss pour partager le secret et un autre pour recombiner
	err=0;
	ctx_split = lsss_new(bits, thresh, &err);
	if (err != LSSS_ERR_NOERR) {
		printf("lsss_new() failed. err=%d\n", err);
		exit(1);		
	}
	
	err=0;
	ctx_combine = lsss_new(bits, thresh, &err);
	if (err != LSSS_ERR_NOERR) {
		printf("lsss_new() failed. err=%d\n", err);
		exit(1);		
	}	
	
	
	ctx_combine->recoef = true;
		
	part = alloca(ctx_split->size*8); memset(part, 0, ctx_split->size*8);
	lsss_set_secret(ctx_split, secret);
	avant=temps();

	i=thresh+rand()%4;
	for (i=0; i<thresh; i++) {
		xpart=1+rand()%1000;
		lsss_get_part(ctx_split, part, xpart);
		err = lsss_set_part(ctx_combine, part, xpart);
		if (err == LSSS_ERR_PART_TWICE) { 
			// Si on a chargé une même part deux fois, il faut en refaire une autre
			i--; 
		}
	}

	tps_gen=temps()-avant;
	avant=temps();
	
	if (lsss_combine(ctx_combine) == LSSS_ERR_NOERR) {
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


/**
\brief Do a tests serie for a given possible bits width and threshold number
Timings are printed in a CSV format
*/
void performance_test(void) {
	puts("************ First test : performance\n");
	
	srand (time (NULL));
	lsss_register_random_source(random_bytes);

	// Array to store time measurements 
	int tps_gen[ARRAY_LENGTH(bits_a_tester)][ARRAY_LENGTH(thresh_a_tester)];
	int tps_rec[ARRAY_LENGTH(bits_a_tester)][ARRAY_LENGTH(thresh_a_tester)];
	
	memset(tps_gen, 0, sizeof tps_gen);
	memset(tps_rec, 0, sizeof tps_rec);
	
	// Do the tests : 3 nested loops 
	for (int n=0; n<NTESTSP; n++) 
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) 
	for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) {
		int bits, thresh;
		bits  = bits_a_tester[b];
		thresh = thresh_a_tester[t];
		
		int tg, tr;
		essai_split_combine(bits, thresh, &tg, &tr);
		printf("."); fflush(stdout);
		tps_gen[b][t] += tg;
		tps_rec[b][t] += tr;
	}
	
	// Divide by NTESTS to obtain an average duration
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) 
	for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) {
		tps_gen[b][t] /= NTESTSP;
		tps_rec[b][t] /= NTESTSP;
	}
	
	// Display result CSV-style
	printf("\n\nParts generation time (milliseconds) :\n");
	printf("X"); for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", bits_a_tester[b]);
	printf("\n");
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) {
		printf("%d", thresh_a_tester[t]);
		for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", tps_gen[b][t]);
		printf("\n");
	}	
	
	printf("\nAlgorithmic complexity validation :\n");
	printf("\nPart generation time per bit length and threshold (1E6 * t * bits^-2 * thresh^-2)\n");
	printf("X"); for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", bits_a_tester[b]);
	printf("\n");
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) {
		printf("%d", thresh_a_tester[t]);
		for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) {
			float f=((float)bits_a_tester[b]*   // Purpose of this calculation :
			         (float)bits_a_tester[b]*   // to validate the algorithmic complexity
					 (float)thresh_a_tester[t]*
					 (float)thresh_a_tester[t]);
			printf(";%f", (float)1.0E6*tps_gen[b][t]/f);
		}
		printf("\n");
	}

	printf("\nRecombination time (milliseconds) :\n");
	printf("X"); for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", bits_a_tester[b]);
	printf("\n");
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) {
		printf("%d", thresh_a_tester[t]);
		for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", tps_rec[b][t]);
		printf("\n");
	}
	
	printf("\nAlgorithmic complexity validation :\n");
	printf("Recombination time par bits length and threshold (1E6 * t * bits^-2 * thresh^-2)\n");
	printf("X"); for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) printf(";%d", bits_a_tester[b]);
	printf("\n");
	for (int t=0; t<ARRAY_LENGTH(thresh_a_tester); t++) {
		printf("%d", thresh_a_tester[t]);
		for (int b=0; b<ARRAY_LENGTH(bits_a_tester); b++) {
			float f=((float)bits_a_tester[b]*   // Purpose of this calculation :
			         (float)bits_a_tester[b]*   // to validate the algorithmic complexity
					 (float)thresh_a_tester[t]*
					 (float)thresh_a_tester[t]);
			printf(";%f", (float)1.0E6*tps_rec[b][t]/f);
		}
		printf("\n");
	}	
}



/**
\brief Do a serie of tests with random bits width and threshold
The goal is to do some king of fuzzing
*/
void fuzzing_test(void) {
	puts("\n\n************ Second test : random parameters (fuzzing)\n");
	for (int n=0; n<NTESTSF; n++) {
		int b = ((rand()%1000)<<3) +8;
		int t = 3+2*(rand()%4);
		printf("b=%d t=%d  %d%% done           \r", b, t, (uint64_t)100*n/NTESTSF); fflush(stdout);
		essai_split_combine(b,t, NULL, NULL);

	}
	printf("\n%d tests done\n", NTESTSF);
}


void main(void) {
	performance_test();
	fuzzing_test();
}