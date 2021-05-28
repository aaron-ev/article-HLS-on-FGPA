/*******************************************************************************/
#ifndef FFT_DIT4_v2_H_
#define FFT_DIT4_v2_H_
#define N 16

#define TRUE 1
#define pi 4.*atan(1.)

typedef float data_inp; // Bus de entrada
//typedef float data_out; // Bus de salida


void FFT_DIT4 (
  data_inp xcr[N],
  data_inp xci[N]//,
  //data_out *salr,
  //data_out *sali
  );
#endif

