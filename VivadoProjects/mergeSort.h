/*******************************************************************************/
#ifndef MERGESORT_H
#define MERGESORT_H

#include "stdint.h"
#include "limits.h"

#define N	48	// Number of elements to order

float A[N];
void mergeSort(float A[N]);
void mergeRecurv(float A[N],uint32_t p,uint32_t r);
void mergee(float A[N],uint32_t p,uint32_t q,uint32_t r);

#endif


