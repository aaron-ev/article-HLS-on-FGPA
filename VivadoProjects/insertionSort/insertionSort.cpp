#include "insertionSort.h"

extern data_inp A[N];
extern fp_bit1 operation;

void insertionAlgorithm(void)
 {
     short i,j;
     for(i = 1; i < N; i = i + 1)
     {
        for(j = i-1; j >= 0; j = j - 1)
        {
            if(A[j] > A[j+1])
            {
            	//Swap operation
            	data_inp temp = A[j];
                A[j] = A[j + 1];
                A[j + 1] = temp;
            }
        }
     }
 }

data_inp insertionSort(char indexOutputData)
{
	switch(operation.V)
	{
		case SORT: insertionAlgorithm(); return 0;
		default: return A[indexOutputData];
	}
}


