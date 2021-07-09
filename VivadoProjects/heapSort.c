

#include "heapSort.h"

/**********************************
*
*        Heap Sort no recursively
*
***********************************
*/

void heapSort_noRecurv(data_inp A[N])
{
    short i,j;
    for(i = (N/2)-1; i >=0; i = i - 1)
    {
        maxHeapify_noRecurv(A,i,N);
    }
     for(i = N - 1; i >=0; i = i - 1)
    {
    	//swap operation
        data_inp temp;
        temp = A[0];
        A[0] = A[i];
        A[i] = temp;

        maxHeapify_noRecurv(A,0,i);
    }
}
void maxHeapify_noRecurv(data_inp A[N],data_inp startA, data_inp endA)
{
    int current = startA;
    int i;
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

data_inp heapSort(data_inp dataIn,char posOutData)
{
	static data_inp *ptr;
	static data_inp A[N];
	static flagFill = 0;
	static count = 0;
	if(count < N)
	{
		A[count] = dataIn;
		count++;
		return 0;
	}
	else
	{
		if(flagFill == 0)
		{
			ptr = A;
			heapSort_noRecurv(A);
			flagFill = 1;
		}
	}
	return ptr[posOutData];
}
