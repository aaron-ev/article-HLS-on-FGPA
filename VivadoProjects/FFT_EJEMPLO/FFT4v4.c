/*Función principal que realiza la FFT usando el algortimo DIT radix 4
 * Requiere que la secuencia de entrada se encuentre reordenada
 * Autor: ERA
 * Creado: Oct 2011
 * versión 4.0
 * Ultima modificaciôn 14 de marzo 2014
 */
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <math.h>
#include "FFT_DIT4_v2.h"

/********* LIST OF FUNCTIONS USED *********/
unsigned short int calc_index(unsigned short int l, unsigned short int f, unsigned short int m);
unsigned short int four_raised_to_x(unsigned short int x);
unsigned short int div_floor(unsigned short int x, unsigned short int y);
/*****************************************************/

void FFT_DIT4_FUNC (
		data_inp xcr[N],
		data_inp xci[N]//,
		//data_out *salr,
		//data_out *sali
		) {


    // N twiddle factors
	const float wnr[16] = {1.000000, 0.923880, 0.707107,  0.382683, 0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880 };
	const float wni[16] = {0.000000, -0.382683, -0.707107, -0.923880, -1.000000, -0.923880, -0.707107, -0.382683,  0.000000, 0.382683, 0.707107, 0.923880,  1.000000, 0.923880, 0.707107, 0.382683 };

	const unsigned short int log4N = 2; // log4 (N)

    // float variables
	float ai, ar, bi, br, cr, ci, dr, di;

	// integer variables
	unsigned short int drag_stage, i, q, l,  aux, m;

    // Loop for stages
	Main_loop:
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

			//salr = &xcr[l];
			//sali = &xci[l];
			//*salr = xcr[l];
            //*sali = xci[l];

			xcr[calc_index(l,1,m)] = ar + bi - cr - di;
			xci[calc_index(l,1,m)] = ai - br - ci + dr;

            //salr = &xcr[calc_index(l,1,m)];
			//sali = &xci[calc_index(l,1,m)];
			//*salr =xcr[calc_index(l,1,m)];
            //*sali =xci[calc_index(l,1,m)];


			xcr[calc_index(l,2,m)] = ar - br + cr - dr;
			xci[calc_index(l,2,m)] = ai - bi + ci - di;

            //salr = &xcr[calc_index(l,2,m)];
			//sali = &xci[calc_index(l,2,m)];
			//*salr =xcr[calc_index(l,2,m)];
            //*sali =xci[calc_index(l,2,m)];

			xcr[calc_index(l,3,m)] = ar - bi - cr + di;
			xci[calc_index(l,3,m)] = ai + br - ci - dr;

            //salr = &xcr[calc_index(l,3,m)];
			//sali = &xci[calc_index(l,3,m)];
			//*salr =xcr[calc_index(l,3,m)];
            //*sali =xci[calc_index(l,3,m)];
			}
		}
		//printf("Transformation finished\n\n");
}


