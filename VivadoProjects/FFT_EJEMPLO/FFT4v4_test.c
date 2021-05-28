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
#include "FFT_DIT4_v2.h"

#define TRUE 1
#define pi 4.*atan(1.)

	// Constants
	//const n_samples N = 16; //Number of FFT points


	// float variables
	data_inp xcr[N], xci[N];
	//float *salr, *sali;

	/********* LIST OF FUNCTIONS USED *********/
	void data_load(float xcr[], float xci[]);
	//void data_unload(float xcr[], float xci[], float *salr, float *sali);
	void data_unload(float xcr[], float xci[]);
	void FFT_DIT4_FUNC(data_inp xcr[],  data_inp xci[]);
	//void FFT_DIT4_FUNC(xcr[],  xci[],  *salr,  *sali);
	/*****************************************************/


/********************** MAIN PROGRAM **************/
int main() {

    FILE *fp;
    int i;

	// Load the input sequence (reordered)
	data_load(xcr, xci);
    //salr=xcr;
    //sali=xci;

	// Transform the input sequence
	//FFT_DIT4_FUNC(xcr, xci, &salr, &sali, N);
	FFT_DIT4_FUNC(xcr, xci);

	//salr = xcr;
	//sali = xci;
    // Unload the output sequence
	//data_unload(xcr, xci, &salr, &sali);


	fp = fopen("FFT_DIT4_out.dat", "w");
	for (i=0; i<N; i++) {
        fprintf(fp,"%d %1.4f %1.4f\n", i, xcr[i], xci[i]);
    }
	fclose(fp);

	data_unload(xcr, xci);

	printf ("Comparing against output data \n");
    if (system("diff -w FFT_DIT4_out.dat FFT_DIT4_out.gold.dat")) {
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

void data_load(float xcr[], float xci[]) {
	int i;
	for (i = 0; i < N; i++) {
		//if (i == N / 2-1) {
		if (i == 13)
            xcr[i] = 1.0;
		else
			xcr[i] = 0.0;

		xci[i] = 0.0;
	}

}


// Function to show the FFT results
//void data_unload(float xcr[], float xci[], float *salr, float *sali) {
void data_unload(float xcr[], float xci[]) {
	unsigned short int i;


	for (i = 0; i < N; i++) {
       // *salr++ = xcr[i];
       // *sali++ = xci[i];
       // salr = xcr + i;
       // sali = xci + i ;
  	   //printf(" \t\t X[%d]=%5.5f+j%5.5f\n", i, *(salr+i), *(sali+i));
  	   fprintf(stdout," \t\t X[%d]=%5.5f+j%5.5f\n", i, xcr[i], xci[i]);
	}
	//getch();

	}
