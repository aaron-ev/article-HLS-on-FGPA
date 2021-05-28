**************/
#include <stdio.h>
#include <math.h>
#include "FFT4v2_test.c"

#include <stdlib.h>
#include <conio.h>

float main () {
  const int    SAMPLES = 16;
  FILE         *fp;

  data_inp signalr[samples], signali [samples];
  data_out outputr[samples], outputi[samples];
  //coef_t taps[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0,};

  int i;
  signal = 0;
  
  
  fp=fopen("fft_dit4_out.dat","w");
  for (i=0;i<=SAMPLES;i++) {
  	if (i == 13) 
  		signalr[i] = 1.0
  	else 
  		signalr[i] = 0.0;
  	signali[i] =0.0;
    printf(" El dato real xcr[%d] es %6.2f\n", i, signalr[i]);
    printf(" El dato imag xci[%d] es %6.2f\n", i, signali[i]);
	
    // Execute the function with latest input
    FFT_DIT4(signalr[], signali[], &outputr, &outputi);
    
	// Save the results.
    fprintf(fp,"%i %6.2f %6.2f\n", i, outputr[i], outputi[i]);
  }
  fclose(fp);
  
  printf ("Comparing against output data \n");
  if (system("diff -w fft_dit4_out.dat fft_out.gold.dat")) {

	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
	fprintf(stdout, "*******************************************\n");
     return 1;
  } else {
	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "PASS: The output matches the golden output!\n");
	fprintf(stdout, "*******************************************\n");
     return 0;
  }
}