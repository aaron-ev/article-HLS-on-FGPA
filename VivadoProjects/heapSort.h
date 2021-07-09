/*******************************************************************************/
#ifndef HEAPSORT_H
#define HEAPSORT_H

#include "stdint.h"
#include "stdio.h"
#include "limits.h"

#define N	256	// Number of elements to order
typedef short data_inp;

void heapSort_noRecurv(data_inp A[N]);
void maxHeapify_noRecurv(data_inp A[N],data_inp startA, data_inp endA);

data_inp heapSort(data_inp dataIn,char posOutData);

#endif


