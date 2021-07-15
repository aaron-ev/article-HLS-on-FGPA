/*******************************************************************************/
#ifndef SELECTIONSORT_H
#define SELECTIONSORT_H

#include <ap_int.h>
#include "window_fn_class.h"
#define N		256	// Number of elements to order
#define W_OUT  	  1
#define IW_OUT 	  0

typedef ap_fixed <W_OUT,IW_OUT>fp_bit1;
typedef short data_inp;

typedef struct
{
	data_inp data;
	fp_bit1 done;
}outData_s;

outData_s selectionSort(data_inp dataIn,char posOutData);
fp_bit1 selectionAlgorithm(data_inp A[N]);

#endif


