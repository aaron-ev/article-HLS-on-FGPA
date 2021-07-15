

#include "selectionSort.h"

fp_bit1 selectionAlgorithm (data_inp A[N])
{
	data_inp i,j;
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
    fp_bit1 done;
    done.V = 1;
    return done;
}

outData_s selectionSort(data_inp dataIn,char posOutData)
{
	static data_inp *ptr;
	static data_inp A[N];
	static char flagFill = 0;
	static data_inp count = 0;
	static outData_s sOutData = {0,0};

	if(count < N)
	{
		A[count] = dataIn;
		count++;
		return sOutData;
	}
	else
	{
		if(flagFill == 0)
		{
			ptr = A;
			sOutData.done = selectionAlgorithm(A);
			flagFill = 1;
		}
	}
	sOutData.data = ptr[posOutData];

	return sOutData;
}

