#include "insertion_sort.h"

fp_bit1 insertionAlgorithm(data_inp A[N])
 {
     int i,j;

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
     fp_bit1 done;
     done.V = 1;
     return done;
 }

outData_s insertionSort(data_inp dataIn,char posOutData)
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
			sOutData.done = insertionAlgorithm(A);
			flagFill = 1;
		}
	}
	sOutData.data = ptr[posOutData];

	return sOutData;
}


