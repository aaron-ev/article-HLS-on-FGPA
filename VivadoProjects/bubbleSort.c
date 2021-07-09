

#include "bubbleSort.h"




void bubbleAlgorithm(data_inp A[N])
{
        short i,j;

        for(i = N - 1; i >= 0; i = i - 1)
        {
            for(j = 0; j < i; j = j + 1)
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

data_inp bubbleSort(data_inp dataIn,char posOutData)
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
			bubbleAlgorithm(A);
			flagFill = 1;
		}
	}
	return ptr[posOutData];
}
