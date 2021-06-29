

#include "bubbleSort.h"

/**********************************
*
*
*     Bubble Sort
*
***
***********************************
*/

void swap(float *A,uint32_t i, int32_t j)
{
    int32_t temp;
    temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}

void bubbleSort(float A[N])
{
        int32_t i,j;

        for(i = N - 1; i >= 0; i = i - 1)
        {
            for(j = 0; j < i; j = j + 1)
            {
                if(A[j] > A[j+1])
                    swap(A,j,j+1);
            }
        }
}
