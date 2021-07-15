#include <stdio.h>
#include <stdlib.h>
#include "bubbleSort.h"
data_inp A[N] = {5,4,3,2,1};

int main()
{
	int i;
	bubbleSort(A,0,SORT);
	outData_s sDataOut;
	data_inp data;
	for(i = 0; i < N;i =i +1)
	{
		bubbleSort(A,i,READ);
	}
	/*
	for(i = 0; i < N;i =i +1)
	{
		bubbleSort(rand()%65536,0);
	}
	for(i = 0; i < N;i =i +1)
	{
		sDataOut = bubbleSort(0,i);
	}
    return 0;
    */
    return 0;
}
