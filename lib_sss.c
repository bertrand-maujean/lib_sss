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
 \file lib_sss.c
 \brief Library implementing Shamir's Secret Sharing

 All functions names are prefixed with "lsss_"

 Low level polynomials functions are not exposed :
 - not intended to be called by lib's users, but only by lib internal
 - prefixed with "lsss_zX_" deal with polynomials of F2[X], or elements of GF(2^n) when the argument "base" is given
 - prefixed with "lsss_zXP" deal with elements of GF(2^n)
 - do not allocate memory. Must be made by the caller. No boundary check. Memory for local treatment only on the stack.
 - Come with a bunch of irreductibles polynomials of F2[X], for constructing GF(2^n).
 - All polynomials are represented using uint64_t integers. Will work best on native 64 bits
*/


#include <stdio.h>
#include "lib_sss.h"



// Basic arithmetic functions. 
// Not exposed to API, so declared 'static' and here, instead of header file
static void lsss_zX_raz(lsss_z *poly, int size);
static void lsss_zX_setbit(lsss_z *poly, int bit);
static void lsss_zX_clrbit(lsss_z *poly, int bit);
static  int lsss_zX_tstbit(lsss_z *poly, int bit);
static void lsss_zX_add(lsss_z *somme, const lsss_z *a, const lsss_z *b, int size);
static void lsss_zX_shr(lsss_z *poly, int d, int size);
static void lsss_zX_shl(lsss_z *poly, int d, int size);
static void lsss_zX_shr1(lsss_z *poly, int size);
static  int lsss_zX_degre(lsss_z *p, int size);
static void lsss_zX_div(lsss_z *q, lsss_z *r, lsss_z *n, lsss_z *d, int size);
static void lsss_zX_mul(lsss_z *produit, lsss_z *a, lsss_z *b, int size, lsss_z *base);
static void lsss_zX_random(lsss_z *p, int degre);
static void lsss_zX_print(lsss_z *poly, int size);
static void lsss_zX_print_hex(lsss_z *poly, int size);
static  int lsss_zX_est1(lsss_z *p, int size);
static void lsss_zXP_inverse(lsss_z *inv, lsss_z *a, lsss_z *base, int size);
static  int lsss_zX_irreductible(lsss_z *p, int d);


static lsss_random_source_t lsss_random_source=NULL;

/** \brief Met à zéro tous les coeffs d'un polynôme
\param[in]	poly	le polynome
\param[in]	size	la taille en qword
*/
void lsss_zX_raz(lsss_z *poly, int size) {
	int i;
	for (i=0; i<size; i++)
		poly[i] =0;
}

/** \brief positionne un bit dans un polynôme
\param[in]	poly	le polynome
\param[in]	bit	le n° du bit à fixer à 1 = le degré du terme en question
*/
void lsss_zX_setbit(lsss_z *poly, int bit) {
	poly[ (bit >> 6) ] |= (uint64_t)1<<( bit & 63 );
}


/** \brief efface un bit dans un polynôme
\param[in]	poly	le polynome
\param[in]	bit	le n° du bit à fixer à 0 = le degré du terme en question
*/
void lsss_zX_clrbit(lsss_z *poly, int bit) {
	poly[ (bit >> 6) ] &= ~ ((uint64_t)1<<( bit & 63 ));
}


/** \brief teste un bit dans un polynôme 
\param[in]	poly	le polynome
\param[in]	bit	le n° du bit à tester
\return			0 ou 1 selon l'état du bit
*/
int lsss_zX_tstbit(lsss_z *poly, int bit) {
	return (poly[ (bit >> 6) ] & ((uint64_t)1<<( bit & 63 )) ) >> (bit & 63);
}
 
 
 
/** \brief Addition de polynomes 
\param[out]	somme	Résultat
\param[in]	a,b	les termes
\param[in]	size	taille en qword opérandes (degre max = size*64 -1)
\note	somme a la même taille que a et b. 
\note	c'est un simple XOR bit à bit du coup
*/
#ifndef LSSS_GCC_ASSEMBLY
void lsss_zX_add(lsss_z *somme, const lsss_z *a, const lsss_z *b, int size) {
	int i;
	for (i=0; i< size; i++) {
		somme[i] = a[i] ^ b[i];
	}
}
#else
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
#endif


/** \brief Décalage des coeffs à droite, version optimisé pour décalage de 1 bit
\param[in, out]	p	Le polynome à traiter
\param[in]	size	taille en bits des opérandes
*/
#ifdef LSSS_GCC_ASSEMBLY
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
		"mov 	rax, [rsi+8]						\t\n" // prend le qword suivant
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
#endif

/** \brief Décalage des coeffs à gauche, version optimisé pour décalage de 1 bit
\param[in, out]	p	Le polynome à traiter
\param[in]	size	taille en bits des opérandes
*/
#ifdef LSSS_GCC_ASSEMBLY
void lsss_zX_shl1(lsss_z *poly, int size) {
	uint64_t r;
	
	__asm__("							\t\n"
		"movsxd	rcx,%2					\t\n"
		"mov	rsi,rcx					\t\n"
		"dec	rsi						\t\n"
		"shl	rsi,3					\t\n"
		"add	rsi, %1					\t\n" // pointe sur le dernier qword
		"cmp 	rcx,0					\n\n"
		"jz 	lsss_zX_shl1.erreur_size0   		\n\t"
		
	"lsss_zX_shl1.boucle:							\n\t"
		"dec	rcx						\n\t"
		"jz		lsss_zX_shl1.dernier_qword		\n\t"
		"mov 	rax, [rsi-8]			\t\n" // prend le qword précedent
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
#endif



/** \brief Décalage des coeffs à droite
\param[in, out]	p	Le polynome à traiter
\param[in]	d	le décalage en bits
\param[in]	size	taille en qword des opérandes
\note décalage >63 pas pris en compte. En fait, cette fonction n'est utilisée
que avec d=1, au contraire de shl qui est utilisé avec des décalages variables
*/
#ifndef LSSS_GCC_ASSEMBLY 
void lsss_zX_shr(lsss_z *poly, int d, int size) {
	int i;
	for (i=0; i<size; i++) {
		// Si ce n'est pas le mot de poids faible, alors on reporte la retenue
		if (i!=0) {
			poly[i-1] = poly[i-1] | ( poly[i] << (64-d) );
		}
		// on décale
		poly[i] = poly[i] >> d;
	}
}
#endif


/** \brief Décalage des coeffs à gauche
\param[in, out]	p	Le polynome à traiter
\param[in]	d	le décalage en bits
\param[in]	size	taille en qwords des opérandes
*/
#ifndef LSSS_GCC_ASSEMBLY
void lsss_zX_shl(lsss_z *poly, int d, int size) {
	int i;
	int d64;
	// décalage des mots de 64 bits entiers
	d64=d >>6;
	if (d64) {
		for (i=size-1; i>=d64; i--) {
			poly[i] = poly[i-d64];
		}
		for (;i>=0;i--) {
			poly[i] = 0;
		}
	}
	// Décalage du reste 
	d = d & 63;
	if (d==0) return;
	for (i=size-1; i>=0; i--) {
		// Si ce n'est pas le mot de poids fort, alors on reporte la retenue
		if (i!=size-1) {
			poly[i+1] = poly[i+1] | ( poly[i] >> (64-d) ); // cette partie causerait pb avec d==0...
		}
		// on décale
		poly[i] = poly[i] << d;
	}
}
#else

void lsss_zX_shl(lsss_z *poly, int d, int size) {
	uint64_t r;
	/*
	rdx    va contenir le nombre de qword à traiter, compteur de boucle
	rsi    contient le qword source, en commençant par le dernier
	rdi    contient le qword dest, en commençant par le (dernier-d>>64)
	rcx/cl va contenir le décalage modulo 64 (l'opérande de shld)
	
	*/
	
	__asm__("							\t\n"
		"movsxd	rdx,%3    				\t\n" //size
		"cmp 	rdx,0					\n\n"
		"jz 	lsss_zX_shl.erreur_size0   		\n\t"
		
		"mov	rdi,rdx					\t\n"
		"dec	rdi						\t\n"
		"shl	rdi,3					\t\n"
		"add	rdi, %1					\t\n"  // rdi pointe sur le dernier qword
		
		"movsxd	rax,%2					\t\n" // on va séparer le décalage en n*64 et %64
		"mov 	rcx,rax					\t\n" 
		"and	rcx,63					\t\n" // la partie %64 = opérande de shld
		
		"shr	rax,6					\t\n" // la partie n*64 du décalage
		"mov 	r9, rax					\t\n" // contiendra le nb de qword de poids faible à mettre à 0
		"sub 	rdx,rax					\t\n" // diminue d'autant le nb d'itérations
		"jb		lsss_zX_shl.erreur_size0 \t\n" // décalage >largeur 
		"shl	rax,3					\t\n"
		"mov	rsi, rdi				\t\n"
		"neg	rax						\t\n"
		"add	rsi, rax				\t\n" // pointe sur le qword source
		"std							\t\n" // on va utiliser lodsq/stosq en décrémentant
	
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
#endif


/** \brief Retrouve le degré de p en cherchant le bit de poids le plus fort non nul
\param[in]	p	Le polynome à traiter
\param[in]	size	taille qword des opérandes
\return		le degré
*/
int lsss_zX_degre(lsss_z *p, int size) {
	int i,j,n;
	for (i=size*64-1; i>=0; i--) {
		if (lsss_zX_tstbit(p, i)) return i;
	}
	return 0;
}



/** \brief Division euclidienne de deux polynomes
\param[out]	q	Quotient
\param[out]	r	reste
\param[in]	n	Dividende
\param[in]	d	Diviseur
\param[in]	size
 */
void lsss_zX_div(lsss_z *q, lsss_z *r, lsss_z *n, lsss_z *d, int size) {
	int i, dd; 
	lsss_z *da; // diviseur aligné à gauche
	memset(q, 0, 8*size);
	memcpy(r, n, 8*size); // le premier reste c'est le dividende
	da=alloca(8*size);
	memcpy(da, d, 8*size);
	dd = lsss_zX_degre(d, size);

	if (dd==0) return; // Division par zéro, d n'est pas alignable

	lsss_zX_shl(da, 64*size-dd-1, size);

	for (i=size*64-1; i>=dd; i--) {
		if (lsss_zX_tstbit(r, i)) { // Test le nieme bit du reste en cours
			lsss_zX_setbit(q, i-dd); // alors fixe le bit du quotient
			lsss_zX_add(r, r, da, size); // et soustrait le diviseur pour calculer le reste suivant
		} 		
		#ifdef LSSS_GCC_ASSEMBLY
		lsss_zX_shr1(da, size);
		#else
		lsss_zX_shr(da, 1, size); // décale le diviseur courant pour extraire le bit suivant du quotient
		#endif
	}
}


/** \brief Multiplication de deux polynomes de Z/2Z[X], ou de (Z/2Z[X])/P
\param[out]	produit	Résultat
\param[in]	a,b	les facteurs
\param[in]	size	taille en qwords des opérandes = moitié de la taille du résultat
\param[in]	base	polynome de base si on travaille dans (Z/2Z[X])/P et qu'il faut faire une réduction après. Passer NULL si on travaille dans Z/2Z[X]
\note	Le resultat est de taille 2*size
*/
void lsss_zX_mul(lsss_z *produit, lsss_z *a, lsss_z *b, int size, lsss_z *base) {
	lsss_z *f;
	int i;
	int db;
	
	f = alloca(size*8*2);		// f est l'opérande a qu'on va décaler de proche en proche
	memset(produit, 0, size*8*2);
	memset(f, 0, size*8*2);		// on le charge avec a au départ
	memcpy(f, a, size*8);	
	
	for (i=0; i<64*size; i++) {
		if (lsss_zX_tstbit(b, i)) {
			lsss_zX_add(produit, produit, f, size*2);
		}
		#ifdef LSSS_GCC_ASSEMBLY
		lsss_zX_shl1(f, size*2);
		#else
		lsss_zX_shl(f, 1, size*2);
		#endif
	}
	
	// Fait éventuellement la réduction modulo base
	if (base != NULL) {
		memset(f, 0, size*8*2);
		memcpy(f, base, size*8);	
		db = lsss_zX_degre(f,2*size);
		if (db==0) return; // base=0...
		lsss_zX_shl(f, size*64*2 -db-1, size*2); // aligne à gauche la base dans f
		for (i=size*64*2-1; i>=db; i--) {
			if (lsss_zX_tstbit(produit, i)) { // Test le nieme bit du reste en cours
				lsss_zX_add(produit, produit, f, 2*size);
			} 		
			#ifdef LSSS_GCC_ASSEMBLY
			lsss_zX_shr1(f, 2*size);
			#else
			lsss_zX_shr(f, 1, 2*size); // décale la base glissante	
			#endif
		}
	} 
}



/** \brief Pick a random polynomial of a given degree
\param[out]	p	result
\param[in]	degre	
\note Caller must arrange for the correct size of *p
\note Degre is rounded to the lower 8 boundary

To do :
- handling degre != 0 [8]
- using a better PRNG
*/
void lsss_zX_random(lsss_z *p, int degre) {
	unsigned char *c;
	int n;	
	c = (unsigned char*)p;
	if (lsss_random_source==NULL) {
		for (n=degre>>3; n; n--) {
			#ifdef __linux__
			*c = (unsigned char) random() & 255;
			#endif
			#ifdef _WIN64
			*c = (unsigned char)rand() & 255;
			#endif
			c++;
		}
	} else {
		(*lsss_random_source)(c, degre>>3);
	}
}



/** 
\brief Test if a polynomial is equal to unity P(X)=1
\param[in]	poly	The polynomial
\param[in]	size	Size of the polynomial in qwords
\return 0 if not unity, 1 if equal to unity
*/
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




/** 
\brief Calculate the inverse of a given polynomial, modulo base 
\param[in]	a	The polynomial to invert
\param[out]	inv	The calculated inverse
\param[in]	base	The irreductible polynomial chosen as a base for GF(2^n)
\param[in]	size	Size of the polynomial in qwords
*/
void lsss_zXP_inverse(lsss_z *inv, lsss_z *a, lsss_z *base, int size) {
	lsss_z *u, *v, *g, *t, *z, *h, *temp;
	int i;
	
	u = alloca(size*8);
	v = alloca(size*8);
	g = alloca(size*8);
	t = alloca(size*8);
	z = alloca(size*8);
	h = alloca(size*8);

	memcpy(u, a, size*8);
	memcpy(v, base, size*8);
	memset(g, 0, size*8);
	memset(z, 0, size*8); z[0]=1;
	
	if (lsss_zX_est0(a, size)) {
		i=0;    // Force a division by 0 exception
		i=1/i;  // to be handled by existing exception handler
		return;
	}
	
	while (0==lsss_zX_est1(u, size)) {
		i = lsss_zX_degre(u, size) - lsss_zX_degre(v, size);
		if (i<0) {
			temp=v; v=u; u=temp; // nb : du coup, on ne swappe que les pointeurs
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


/** \brief Load a precomputed irreductible polynomial from F2[X], of given degree
\param[out]	p	Destination. Must be previously zeroed by the caller
\param[in]	d	Wanted degree
\return		0 if ok, else degree of the lowest available polynomial of greater degree.
\note If no polynomial of the asked degree is available, return the degree of the best existing polynomial. If none, return -1 (for example, if asking for a too big degree)
\note Called with p=NULL, test if there is a precomputed polynomial of degree d
 */
int lsss_zX_irreductible(lsss_z *p, int d) {
	#include "irred_f2X_8.c"
	
	uint16_t *c;
	int i;
	
	c=(uint16_t*) coeffs;
	while (*c) {
		if (d==c[1]) { // on en a un de degré convenable
			if (p) {
				for (i=1; i<=c[0]; i++) lsss_zX_setbit(p, c[i]);
				lsss_zX_setbit(p,0);
			}
			return 0;
		}
		if (d<c[1]) { // On en a pas trouvé, on a un degré supérieur
			return c[1];
		}	
		c+=c[0]+1; // Passe au suivant
	}
	return -1;
}




/** \brief Evaluate a polynomial of GF(2^n)[X] for a given input
\param[in]	coef	Coefficient of the polynomial (which are themselves polynomials of F2[X]...)
\param[in]	x	the point at which to evaluate
\param[out]	r	the result
\param[in]	base	the F2[X] irreductible polynomial used as a base for reduction
\param[in]	size	the size of the F2[X] elements (= coeffs, x, r) in qwords
*/
void lsss_GF2n_eval_poly(lsss_z *coef, int thresh, lsss_z *x, lsss_z *r, lsss_z *base, int size) {
	int i;
	lsss_z *temp;
	temp = alloca(2*8*size);	
	memcpy(r, &coef[(thresh-1)*size], size*8); 
	for (i=thresh-2; i>=0; i--) {
		lsss_zX_mul(temp, r, x, size, base);
		lsss_zX_add(r, &coef[i*size], temp, size); 
	}
	memset(temp, 0, 2*8*size);
}


/** \brief Create a context to do some SSS
\param[in]	bits	Number of bits of the secret and secret parts
\param[in]	x	threshold, number of parts necessary to release the secret
\return		a pointer to the context, or NULL in case of error
*/
lsss_ctx *lsss_new(int bits, int thresh, int *err) {
	int s;	   // taille en qwords des coeffs et du secret
	size_t l1; // taille de la partei struct
	lsss_ctx *r;
	void *p;
	uint64_t c; // canary initialization
	
	if (err) *err = LSSS_ERR_NOERR;
	
	s = 1+((bits+63)>>6); // nb de qwords nécessaires, plus 1 car il faut stocker le terme dominant du polynome de base
	// ex : pour 256 bits demandés, on sera à 5 qwords

	l1 = sizeof(lsss_ctx);
	l1+= 8*s*thresh;   // as many coeffs as threshold. For exemple, thresh=2 -> deg=1 -> 2 coeffs x^0 + x^1 
	l1+= 8*s*thresh;   // as many parts as thresh by definition
	l1+= 8*thresh;	  // x parts are only int
	l1+= 8*s;         // for base  
	l1+= 8;           // canary3 which is not at fixed offset
	
	c = (uint64_t)alloca(8); // to retrieve something variable
	c = c ^ LSSS_CANARY_CONST;
		
	r=malloc(l1);
	if (r==NULL) {
		if (err) *err = LSSS_ERR_NOMEM;
		return NULL;
	}
	memset(r, 0, l1);
	r->meml = l1;
	r->bits = bits;
	r->thresh = thresh;
	r->size = s;
	//r->nparts = 0; déjà par le memset
	p=r;
	p=(char*)p + sizeof(lsss_ctx); // Bonne syntaxe à reprendre partout. += sur un void* n'est pas du C correct
	r->coeffs = p;	p=(char*)p +8*s*thresh;
	r->parts = p;	p=(char*)p +8*s*thresh;
	r->xparts= p;   p=(char*)p +8*thresh;
	r->base=p;	p=(char*)p +8*s;
	if (lsss_zX_irreductible(r->base, bits)) {
		// Handle the case where no polynomial exists for the requested bits size
		if (err) *err = LSSS_ERR_NOPOLY;
		free(r);
		return NULL;
	}
	
	r->canary3 = p;
	
	r->canary1 = c;
	r->canary2 = c;
	*(r->canary3) = c;
	r->recoef = false;
	
	return r;
}

/** \brief Free a context after zeroing it
\param[in]	ctx	Pointer to the context returned by lsss_new()
*/
void lsss_free(lsss_ctx *ctx) {
	size_t l;
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
	l=ctx->meml;
	memset(ctx, 0, l);
	free(ctx);
}

/** \brief Load the secret in the context, then pick up random coeffs to prepare following calls to lsss_get_part()
\param[in]	ctx	Pointer to the context
\param[in]	secret	Pointer to the secret
The number of bytes copied from the secret is rounded to the next greater bytes number, according to ctx->bits
*/
void lsss_set_secret(lsss_ctx *ctx, void *secret) {
	int s, i;
	
	// Copy the given secret as coefficient of degree 0
	s = (ctx->bits+7)>>3;
	memcpy(&ctx->coeffs[0], secret, s);
	
	// pick up random coefficient for degree 1..thresh-1
	for (i=1; i<ctx->thresh; i++) {
		*(lsss_z*) (&ctx->coeffs[i*ctx->size]) =1;
		lsss_zX_random(&ctx->coeffs[i*ctx->size], ctx->bits);
	}
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
}

/** \brief Generate a part of secret
\param[in]	ctx	Pointer to the context returned by lsss_new()
\param[out]	part	pointer to an area to receive the generated part
\param[in]	number	part number ie x coordinate where the polynomial is evaluated
*/
void lsss_get_part(lsss_ctx *ctx, void *part, uint64_t number) {
	lsss_z *x, *r;
	x=alloca(ctx->size*8);
	r=alloca(ctx->size*8);
	memset(x, 0, ctx->size*8);
	x[0] = (lsss_z)number;
	lsss_GF2n_eval_poly(ctx->coeffs, ctx->thresh, x, r /*part*/, ctx->base, ctx->size);
	memcpy(part, r, (ctx->bits+7)>>3); 
	// il faut passer par un 'r' intermédiaire 	car ctx->size est plus grand que 
	// ce que l'utilisateur de l'API peut attendre, du fait d'un qword supplémentaire 
	// pour pouvoir représenter le polynôme de réduction 
	memset(x, 0, ctx->size*8);
	memset(r, 0, ctx->size*8);
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
}


/** 
\brief Get the number of remaining parts to load before combining
\param[in]	ctx	Pointer to the context
\return		The number of secret parts still missing before trying to restore the secret
*/
int lsss_missing_parts(lsss_ctx *ctx) {
	return ctx->thresh - ctx->nparts;
}

/** 
\brief Set a secret part in a context, to prepare secret restoration
\param[in]	ctx	Pointer to the context
\param[in]	part	Pointer to part data
\return see LSSS_ERR_*
*/
int lsss_set_part(lsss_ctx *ctx, void *part, uint64_t number) {
	void *dest;
	int i;
	
	// Check if we already have all needed parts
	if (ctx->nparts >= ctx->thresh) return LSSS_ERR_MANY_PARTS;
	
	// Check is given part is already loaded
	for (i=0; i<ctx->nparts; i++) {
		if (ctx->xparts[i] == number) {
			return LSSS_ERR_PART_TWICE;
		}
	}
	dest = ((char*)ctx->parts) + ((ctx->nparts)*(ctx->size)*8);
	memset(dest, 0, ctx->size*8);		// Met à zéro toute la variable
	memcpy(dest, part, (ctx->bits+7)>>3 );  // mais ne copie vraiment que le nombre d'octets prévus
	ctx->xparts[ctx->nparts] = (uint64_t) number;
	ctx->nparts++;
	
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
	
	return LSSS_ERR_NOERR;
}



/** 
\brief Combine secret parts previously loaded in the context
\param[in]	ctx	Pointer to the context
\return 0 if ok, else see error code
To do : terminanate the calculation of other coeffs, in order to allow generation of additionnal parts from an existing SSS
*/

#define M(l,c) ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1)+(c)*8*ctx->size))
#define P(l) ((void*)((char*)matrice + (l)*8*ctx->size*(ctx->thresh+1) + 8*ctx->size*ctx->thresh))
#define S (ctx->size)

int lsss_combine(lsss_ctx *ctx) {
	// Structure de la matrice de calcul :
	// [M][C]=[P]
	// où [C] est la matrice colonne des coeffs du polynome. On cherche uniquement le dernier d'ailleurs
	//    [M] est une matrice thresh*thresh contenant les puissances successives des xparts
	//    [P] est la matrice colonne des parts de secret données
	// - lignes de 0 à thresh-1 pour chaque part de secret
	// - colonne de 0 à thresh-1 pour les coefficients, et la dernière colonne thresh contient les parts de départ (vecteur Y dans la notation [A][X]=[Y]
	void *matrice, *ligne_temp;
	lsss_z *inv,*pro, *cd;  // va contenir l'inverse du terme dominant du pivot courant
	size_t size_matrice;
	int l,c,ll, found;
		
	size_matrice = 	ctx->size * ctx->thresh * (ctx->thresh+1) *8;
	matrice = alloca(size_matrice);
	inv = alloca(S*8);   // pour stocker le résultat des inverses, dans la normalisation des pivots
	pro = alloca(S*2*8); // pour stocker le résultat des mul, qui sont plus grands 
	ligne_temp=alloca(S*8*(ctx->thresh+1));
	cd = alloca(S*8); // va stocker temporairement le coef dominant d'une ligne qu'on réduit
	memset(matrice, 0, size_matrice);
	memset(inv, 0, S*8);

	// recopie des coeffs "part"
	for (l=0; l<ctx->thresh; l++) {
		memcpy(P(l), (char*)ctx->parts + l*8*S, 8*S);
	}
	
	// Calcul des puissances des xpart en tant que coefficients initiaux de la matrice avant réduction
	for (l=0; l<ctx->thresh; l++) {
		// On charge la dernière colonne de la matrice avec les puissances 0, soit des 1
		*(lsss_z*)M(l, ctx->thresh-1) = 1;
		
		// On utilise cd pour contenir xpart sous forme de lsss_z
		memset(cd, 0, S*8);
		cd[0] = *(ctx->xparts + l);
		
		// chargement des puissances successives
		for (c=ctx->thresh-2; c>=0; c--) {
			lsss_zX_mul(pro, cd, M(l, c+1), S, ctx->base);
			memcpy(M(l,c), pro, 8*S);
		}
	}
	
	// Réduction de la matrice en commençant par la première ligne
	for (l=0; l<ctx->thresh; l++) {
		// Inversion du coefficient dominant de la ligne l
		if (lsss_zX_est0(M(l,l), S)) {
			// cas rare mais qui arrive : le pivot qu'on choisit est nul, il faut faire une inversion avec une ligne d'en dessous
			found=-1;
			for (ll=l+1; ll<ctx->thresh; ll++) {
				if (lsss_zX_est0(M(ll,l), S)==0) {
					found=ll;
					break;
				}
			}
			if (found==-1) {
				return LSSS_ERR_PARTS_INCONSISTENT;
			}
			// Exchange the rows 		
			memcpy(ligne_temp,	M(l,0),		S*8*(ctx->thresh+1));
			memcpy(M(l,0),		M(ll,0),	S*8*(ctx->thresh+1));
			memcpy(M(ll,0),		ligne_temp,	S*8*(ctx->thresh+1));	
		}
		lsss_zXP_inverse(inv, M(l,l), ctx->base, S);
		
		
		// Normalisation de toute la ligne : mul par inverse du coeff dominant
		for (c=l; c<=ctx->thresh; c++) { // et pas thresh-1 car en dernière colonne on a les parts. On commence à c=l car à gauche, c'est déjà nul
			lsss_zX_mul(pro, inv, M(l,c), S, ctx->base);
			memcpy(M(l,c), pro, 8*S);
		} // Maintenant, le coeff M(l,l) est 1
	
		// Soustrait la ligne qu'on vient de normaliser à toutes les autres lignes
		for (ll=l+1; ll<ctx->thresh; ll++) { // Du coup, pas exécuté si l=thresh-1 dernière ligne
			memcpy(cd, M(ll,l), S*8);
			for (c=l; c<=ctx->thresh; c++) { // tous les coefs c<l sont déjà nuls
				lsss_zX_mul(pro, M(l,c), cd, S, ctx->base); 
				lsss_zX_add(M(ll,c), M(ll,c), pro, S);
			}
		}
	
	} // for(l..)
	

	
	// Eventuellement : continue la réduction pour trouver tous les coeffs, si on souhaite réemmettre des parts
	if ((ctx->recoef) && (ctx->thresh>1)) {
		for (l=ctx->thresh-1; l>0; l--) { // réduit par ligne, en remontant, à partir de l'avant dernière
			if (!lsss_zX_est1(M(l,l), S)) {
				//printf("Coef diagonal pas égal à 1\n");
				return LSSS_ERR_PARTS_INCONSISTENT;
			} 

			// M(l,l) =1
			// M(ll, *) = M(ll, *) + M(l, *) * M(ll,l)
			// M(ll,l) est le coef qu'on veut annuler
			for (ll=0; ll<l; ll++) { // réduit la ligne ll
				memcpy(cd, M(ll,l), S*8);
				for (c=l; c<=ctx->thresh; c++) { // tous les coefs c<l sont déjà nuls, on pourrait optimiser
					lsss_zX_mul(pro, M(l,c), cd, S, ctx->base); 
					lsss_zX_add(M(ll,c), M(ll,c), pro, S);
				}		
			}
		
		} 
		for (l=ctx->thresh-1; l>=0; l--) memcpy(&ctx->coeffs[0]+S*l, P(ctx->thresh-1-l), 8*S); // recopie tous les coefs
	} else {
		memcpy(&ctx->coeffs[0], P(ctx->thresh-1), 8*S); 	// Recopie le résultat dans ceoffs[0]
	}
	
	// Nettoyage en sortie
	memset(matrice, 0, size_matrice);
	memset(inv, 0, S*8);
	memset(pro, 0, S*2*8);
	memset(ligne_temp, 0, S*8*(ctx->thresh+1));
	memset(cd, 0, S*8); 
	
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
	
	return LSSS_ERR_NOERR;
}


/** 
\brief Retrieve restored secret from a context
\param[in]	ctx	Pointer to the context
\param[out]	secret	Pointer to part data
*/
void lsss_get_secret(lsss_ctx *ctx, void *secret) {
	memcpy(secret, &ctx->coeffs[0], (ctx->bits+7)>>3);
	if (ctx->canary1 != ctx->canary2) abort();
	if (ctx->canary2 != *(ctx->canary3)) abort();
}


/** 
\brief Register an external random source for RNG
\param[in]	source	the function to be used. Must have correct parameters
*/

void lsss_register_random_source(lsss_random_source_t source) {
	lsss_random_source=source;
}


