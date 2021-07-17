#include <stdio.h>
#include <stdlib.h>
#include "insertionSort.h"
data_inp A[N];
fp_bit1 operation;
int main(void)
{
	short i;

	writeValues();
	operation.V = SORT;
	insertionSort(0);
	readValues();

    return 0;
}


void writeValues(void)
{
	short i;
	for(i = 0; i < N; i = i + 1)
	{
		A[i] = rand()%65536;
	}
}

void readValues(void)
{
	operation.V = READ;
	short i;
	for(i = 0; i < N; i = i + 1)
	{
		insertionSort(i);
	}
}
