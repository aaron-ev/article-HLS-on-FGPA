

#include "bubbleSort.h"

extern data_inp A[N];

fp_bit1 bubbleAlgorithm(data_inp A[N])
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
        fp_bit1 done;
        done.V = 1;
        return done;
}

data_inp bubbleSort(data_inp A[N],char indexOutputData,char operation)
{
	static data_inp *ptr;
	//static data_inp A[N];
	static char flagFill = 0;
	static data_inp count = 0;
	static outData_s sOutData = {0,0};

	switch(operation)
	{
		case SORT: bubbleAlgorithm(A); return 0;
		case READ: return A[indexOutputData];
	}

}
