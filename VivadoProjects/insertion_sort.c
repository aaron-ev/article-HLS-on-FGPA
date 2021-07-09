#include "insertion_sort.h"

void printArray(data_inp *A,int size)
{
    int i;
    for(i = 0; i < size; i = i + 1)
    {
        printf("A[%i] = %d\n",i,A[i]);
    }
    printf("----------\n");
}



void insertionAlgorithm(data_inp A[N])
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
 }

data_inp insertionSort(data_inp dataIn,char posOutData)
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
			insertionAlgorithm(A);
			flagFill = 1;
		}
	}
	return ptr[posOutData];
}
/*
data_inp test2(data_inp pos)
{
	data_inp *ptr;
	static flag = 0;
	if(flag == 0)
	{
		static data_inp b[5] = {5,4,3,2,1};
		insertion_sort(b);
		ptr = b;
		flag = 1;
	}
	return ptr[pos];
}
*/


