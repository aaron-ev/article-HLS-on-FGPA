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
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <math.h>

#define TRUE 1
#define pi 4.*atan(1.)

	// Constants
	const unsigned short int N = 16; //Number of FFT points


	// float variables
	float xcr[16], xci[16];
	float *salr, *sali;

	/********* LIST OF FUNCTIONS USED *********/
	void data_load(unsigned short int N, float xcr[], float xci[]);
	void data_unload(unsigned short int N, float xcr[], float xci[], float *salr, float *sali);
	unsigned short int calc_index(unsigned short int l, unsigned short int f, unsigned short int m);
	unsigned short int four_raised_to_x(unsigned short int x);
	unsigned short int div_floor(unsigned short int x, unsigned short int y);
	//void FFT_DIT4_FUNC(float xcr[], float xci[], float *salr, float *sali, unsigned short int N);
	void FFT_DIT4_FUNC(float xcr[], float xci[], unsigned short int N);
	/*****************************************************/


/********************** MAIN PROGRAM **************/
int main() {

    FILE *fp;
    int i;

	// Load the input sequence (reordered)
	data_load(N, xcr, xci);

	// Transform the input sequence
	//FFT_DIT4_FUNC(xcr, xci, &salr, &sali, N);
	FFT_DIT4_FUNC(xcr, xci, N);

    salr=xcr;
    sali=xci;

    // Unload the output sequence
	data_unload(N, xcr, xci, &salr, &sali);

	fp = fopen("FFT_DIT4_out.dat", "w");
	for (i=0; i<N; i++) {
        fprintf(fp,"%i %1.4f %1.4f\n", i, xcr[i], xci[i]);
    }
	fclose(fp);

    printf ("Comparing against output data \n");
    if (system("diff -w FFT4_DIT_out.dat FFT_DIT_gold.dat")) {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 1;
        }
    else {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }
}
//void FFT_DIT4_FUNC(float xcr[], float xci[], float *salr, float *sali, unsigned short int N) {
void FFT_DIT4_FUNC(float xcr[], float xci[], unsigned short int N) {


    // N twiddle factors
	const float wnr[16] = {1.000000, 0.923880, 0.707107,  0.382683, 0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880 };
	const float wni[16] = {0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880,  1.000000, 0.923880, 0.707107, 0.382683 };

	const unsigned short int log4N = 2; // log4 (N)

    // float variables
	float ai, ar, bi, br, cr, ci, dr, di;

	// integer variables
	unsigned short int drag_stage, i, q, l,  aux, m;

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

			xcr[calc_index(l,1,m)] = ar + bi - cr - di;
			xci[calc_index(l,1,m)] = ai - br - ci + dr;

			xcr[calc_index(l,2,m)] = ar - br + cr - dr;
			xci[calc_index(l,2,m)] = ai - bi + ci - di;

			xcr[calc_index(l,3,m)] = ar - bi - cr + di;
			xci[calc_index(l,3,m)] = ai + br - ci - dr;
			}
		}
		printf("Transformation finished\n\n");
}
void data_load(unsigned short int N, float xcr[], float xci[]) {
	int i;
	for (i = 0; i < N; i++) {
		//if (i == N / 2-1) {
		if (i == 13)
            xcr[i] = 1.0;
		else
			xcr[i] = 0.0;

		xci[i] = 0.0;

    	//printf(" El dato real xcr[%d] es %6.2f\n", i, xcr[i]);
    	//printf(" El dato imag xci[%d] es %6.2f\n", i, xci[i]);
	}

}


// Function to show the FFT results
void data_unload(unsigned short int N, float xcr[], float xci[], float *salr, float *sali) {
	unsigned short int i;

	for (i = 0; i < N; i++) {
        *salr++ = xcr[i];
        *sali++ = xci[i];
  		printf(" \t\t X[%d]=%5.5f+j%5.5f\n", i, *--salr, *--sali);
  		//printf(" \t\t X[%d]=%5.5f+j%5.5f\n", i, xcr[i], xci[i]);
	}
	getch();

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
