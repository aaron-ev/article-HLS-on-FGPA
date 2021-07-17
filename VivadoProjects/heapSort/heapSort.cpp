

#include "heapSort.h"

/**********************************
*
*        Heap Sort no recursively
*
***********************************
*/
extern data_inp A[N];
extern fp_bit1 operation;
void heapSort_noRecurv(void)
{
    short i,j;
    for(i = (N/2)-1; i >=0; i = i - 1)
    {
        maxHeapify_noRecurv(i,N);
    }
     for(i = N - 1; i >=0; i = i - 1)
    {
    	//swap operation
        data_inp temp;
        temp = A[0];
        A[0] = A[i];
        A[i] = temp;

        maxHeapify_noRecurv(0,i);
    }
}
void maxHeapify_noRecurv(data_inp startA, data_inp endA)
{
	data_inp current = startA;
    short i;
    for(i = 0; i < endA; i = i + 1)
   // while(current * 2 + 1 < endA)
    {
    	data_inp left = current * 2 + 1;
    	data_inp right = current * 2 + 2;

        if(left < endA && A[current] < A[left])
            current = left;
        if(right < endA && A[current] < A[right])
            current = right;
        if(current != startA)
        {
            //swap(A,current,startA);
            //swap operation
            data_inp temp;
            temp = A[current];
            A[current] = A[startA];
            A[startA] = temp;

            startA = current;
        }
       // else
        //    break;
    }
}

data_inp heapSort(char indexOutputData)
{
	switch(operation.V)
	{
		case SORT: heapSort_noRecurv(); return 0;
		default: return A[indexOutputData];
	}
}
