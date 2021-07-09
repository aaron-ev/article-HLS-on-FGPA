

#include "selection_sort.h"

void selectionAlgorithm (data_inp A[N])
{
	short i,j;
    for (i = 0; i < N - 1; i++)
    {
    	unsigned int min = A[i];
    	unsigned int index_min = i;
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

data_inp selectionSort(data_inp dataIn,char posOutData)
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
			selectionAlgorithm(A);
			flagFill = 1;
		}
	}
	return ptr[posOutData];
}
