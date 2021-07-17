

#include "selectionSort.h"

extern data_inp A[N];
extern fp_bit1 operation;

 void selectionAlgorithm(void)
{
	short i,j;
    for (i = 0; i < N - 1; i++)
    {
    	data_inp min = A[i];
    	data_inp index_min = i;
        for (j = i + 1; j < N; j++)
        {
            if (A[j] < min)
            {
                index_min = j;
                min = A[j];
            }
        }
        //Swap
        data_inp temp = A[i];
        A[i] = A[index_min];
        A[index_min] = temp;
    }
}

data_inp selectionSort(char indexOutputData)
{
	switch(operation.V)
	{
		case SORT: selectionAlgorithm(); return 0;
		default: return A[indexOutputData];
	}
}

