

#include "heapSort.h"

/**********************************
*
*        Heap Sort no recursively
*
***********************************
*/

void swap(float *A,uint32_t i, int32_t j)
{
    int32_t temp;
    temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}

void heapSort_noRecurv(float A[N])
{
    int i,j;
    //printArray(A,sizeA);
    for(i = (N/2)-1; i >=0; i = i - 1)
    {
        maxHeapify_noRecurv(A,i,N);
        //printArray(A,sizeA);
    }
     for(i = N - 1; i >=0; i = i - 1)
    {
        swap(A,i,0);
        maxHeapify_noRecurv(A,0,i);
    }
}
void maxHeapify_noRecurv(float A[N],uint32_t startA, uint32_t endA)
{
    int current = startA;
    int i;
    for(i = 0; i < endA; i = i + 1)
   // while(current * 2 + 1 < endA)
    {
        uint32_t left = current * 2 + 1;
        uint32_t right = current * 2 + 2;

        if(left < endA && A[current] < A[left])
            current = left;
        if(right < endA && A[current] < A[right])
            current = right;
        if(current != startA)
        {
            swap(A,current,startA);
            startA = current;
        }
       // else
        //    break;
    }
}
