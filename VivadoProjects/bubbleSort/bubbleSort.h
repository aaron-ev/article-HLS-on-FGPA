/*******************************************************************************/
#ifndef BUBBLESORT_H
#define BUBBLESORT_H

#include <ap_int.h>
#include "window_fn_class.h"

#define N	      5	// Total de numeros  a ordenar

// Macros para realizar una palabra de 1 bit solamente
#define W_OUT  	  1
#define IW_OUT 	  0

#define FALSE     0
#define TRUE      1

// Operations
#define SORT 0
#define READ 1


// La siguiente linea es tomada del manual para crear variables en punto fijo
typedef ap_fixed <W_OUT,IW_OUT>fp_bit1;

typedef short data_inp;
typedef struct
{
	data_inp data;
	fp_bit1 done;
}outData_s;

fp_bit1 bubbleAlgorithm(data_inp A[N]);
data_inp bubbleSort(data_inp A[N],char indexOutputData,char operation);

#endif

