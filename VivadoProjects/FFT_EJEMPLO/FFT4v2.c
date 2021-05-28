/*
 * FFT_DIT4_v2.c
 *
 *  Created on: 19/10/2011
 *      Author: ERA
 */

// Program for computing in-place FFT DIT radix-4 for 64 points
// NOTE: N must a power of 4
// The WN are pre-compute constants
///////////////////////////////////////
//#include <stdlib.h>
//#include <stdio.h>
//#include <conio.h>
//#include <math.h>
#include "FFT_DIT4_v2.h";



/********************** MAIN PROGRAM **************/
void FFT_DIT4 (
	data_inp xcr[N],
	data_inp xci[N],
	data_out *xocr,
	data_out *xoci
	)
{

	// Constants
	//const unsigned short int N = 16; //Number of FFT points
	const unsigned short int log4N = 2; // log4 (N)

	// N twiddle factors
	const float wnr[16] = {1.000000, 0.923880, 0.707107,  0.382683, 0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880 };
	const float wni[16] = {0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880,  1.000000, 0.923880, 0.707107, 0.382683 };

	// float variables
	// float xcr[16], xci[16];
	float ai, ar, bi, br, cr, ci, dr, di;

	// integer variables
	unsigned short int drag_stage, i, q, l,  aux, m;


	/********* LIST OF FUNCTIONS USED *********/
	//void data_load(unsigned short int N, float xcr[], float xci[]);
	//void data_unload(unsigned short int N, float xcr[], float xci[]);
	unsigned short int calc_index(unsigned short int l, unsigned short int f, unsigned short int m);
	unsigned short int four_raised_to_x(unsigned short int x);
	unsigned short int div_floor(unsigned short int x, unsigned short int y);
	/*****************************************************/

	// Load the input sequence
	//data_load(N, xcr, xci);

	// Loop for stages
	for (m=0; m < log4N; m++) {

		// Compute amount of dragonflies per stage
		drag_stage = N/4;

		// Loop for dragonflies processing
		for (i=0;  i < drag_stage; i++) {

			//aux = pow(4, log4N-1-m);
			aux = four_raised_to_x(log4N-1-m);

			// Multiplicative index computing for WN
			q =  div_floor(i, aux) * aux;

			// First input index computing of the dragonfly
			l =  (i - q) * four_raised_to_x(m+1) + div_floor(i, aux);

			// Definition of the auxiliary variables for dragonfly
			ar = xcr[l];
			ai = xci[l];

			br = xcr[calc_index(l,1,m)] * wnr[q]- xci[calc_index(l,1,m)] *  wni[q];
			bi = xcr[calc_index(l,1,m)] * wni[q] + xci[calc_index(l,1,m)] *  wnr[q];

			cr = xcr[calc_index(l,2,m)] * wnr[2*q] - xci[calc_index(l,2,m)] *  wni[2*q] ;
			ci = xcr[calc_index(l,2,m)] * wni[2*q] + xci[calc_index(l,2,m)] *  wnr[2*q] ;

			dr = xcr[calc_index(l,3,m)] * wnr[3*q] - xci[calc_index(l,3,m)] *  wni[3*q];
			di = xcr[calc_index(l,3,m)] * wni[3*q] + xci[calc_index(l,3,m)] *  wnr[3*q];

			// Dragonfly compute  (in-place)
			xcr[l] = ar + br + cr + dr;
			xci[l] = ai + bi + ci + di;
			*xocr=xcr[l];
			*xoci=xci[l];

//			xcr[calc_index(l,1,m)] = ar + bi - cr - di;
//			xci[calc_index(l,1,m)] = ai - br - ci + dr;
//
//			xcr[calc_index(l,2,m)] = ar - br + cr - dr;
//			xci[calc_index(l,2,m)] = ai - bi + ci - di;
//
//			xcr[calc_index(l,3,m)] = ar - bi - cr + di;
//			xci[calc_index(l,3,m)] = ai + br - ci - dr;
			//xci[l + 3*pow(4 ,m)] = ai + br - ci - dr;

			xcr[calc_index(l,1,m)] = ar + bi - cr - di;
			xci[calc_index(l,1,m)] = ai - br - ci + dr;

			xcr[calc_index(l,2,m)] = ar - br + cr - dr;
			xci[calc_index(l,2,m)] = ai - bi + ci - di;

			xcr[calc_index(l,3,m)] = ar - bi - cr + di;
			xci[calc_index(l,3,m)] = ai + br - ci - dr;
			}

		}

	//data_unload(N, xcr, xci);
}



unsigned short int calc_index(unsigned short int l,  unsigned short int f, unsigned short int m) {
	unsigned short int four_raised_to_x(unsigned short int x);

	return( l+ f* four_raised_to_x(m) );
}

unsigned short int four_raised_to_x(unsigned short int x) {

	unsigned short int i=1;

	return ( ((i << x) << x) );
}

unsigned short int div_floor(unsigned short int x, unsigned short int y) {
	return(x >> --y);

}
