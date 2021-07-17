

#include "bubbleSort.h"

extern data_inp A[N];
extern fp_bit1 operation;
void bubbleAlgorithm(void)
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

data_inp bubbleSort(char indexOutputData)
{

	switch(operation.V)
	{
		case SORT: bubbleAlgorithm(); return 0;
		default: return A[indexOutputData];
	}

}
