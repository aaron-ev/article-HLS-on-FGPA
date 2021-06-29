/*******************************************************************************/
#ifndef HEAPSORT_H
#define HEAPSORT_H

#include "stdint.h"
#include "stdio.h"
#include "limits.h"

#define N	48	// Number of elements to order

float A[N];
void heapSort_noRecurv(float A[N]);
void maxHeapify_noRecurv(float A[N],uint32_t startA, uint32_t endA);

#endif


