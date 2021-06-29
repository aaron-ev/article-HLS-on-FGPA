
#ifndef SORT_ALGORITHMS_H
#define SORT_ALGORITHMS_H

#include "stdint.h"
#include "math.h"
#include "limits.h"

void swap(float *A,uint32_t i, int32_t j);
/**********************************
*
*              Heap Sort
*
***********************************
*/

#define PARENT(i)   floor(i/2)
#define LEFT(i)     2*i + 1
#define RIGHT(i)    2*i + 2

uint32_t heapSize;
void maxHeapify(float *A,int32_t i);
void buildMaxHeap(float *A);
void heapSort(float *A,uint32_t sizeA);

/**********************************
*
*        Heap Sort no recursively
*
***********************************
*/

void heapSort_noRecurv(float *A,uint32_t sizeA);
void maxHeapify_noRecurv(float *A,uint32_t startA, uint32_t endA);

/**********************************
*
*              Insertion Sort
*
***********************************
*/

void insertionSort(float *A,uint32_t sizeA);

/**********************************
*
*              Selection Sort
*
***********************************
*/

void selectionSort(float *A,uint32_t sizeA);

/**********************************
*
*              Merge Sort
*
***********************************
*/

void mergeSort(float *A,uint32_t sizeA);
void mergeRecurv(float *A,uint32_t p,uint32_t r);
void mergee(float *A,uint32_t p,uint32_t q,uint32_t r);

/**********************************
*
*              Bubble Sort
*
***********************************
*/

void bubbleSort(float *A,uint32_t sizeA);

/**********************************
*
*              Shell Sort
*
***********************************
*/

void shellSort(float *A, uint32_t sizeA);
#endif // SORT_ALGORITHMS_H
