/*******************************************************************************/
#ifndef INSERTIONSORT_H
#define INSERTIONSORT_H

#include <ap_int.h>
#include "window_fn_class.h"

#define N	      256	// Total de numeros  a ordenar

// Macros para realizar una palabra de 1 bit solamente
#define W_OUT  	  1
#define IW_OUT 	  1

#define FALSE     0
#define TRUE      1

// Operations
#define SORT 0
#define READ 1


// La siguiente linea es tomada del manual para crear variables en punto fijo
typedef ap_fixed <W_OUT,IW_OUT>fp_bit1;

typedef short data_inp;

void insertionAlgorithm(void);
data_inp insertionSort(char indexOutputData);
//write random values to the global array
void writeValues(void);
//read sorted values
void readValues(void);

#endif


