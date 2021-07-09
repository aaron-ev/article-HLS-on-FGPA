#include <stdio.h>
#include <stdlib.h>
#include "selection_sort.h"

int main(void)
{
	int i;
	data_inp dataOut;
	for(i = 0; i < N;i =i +1)
	{
		selectionSort(rand()%65536,0);
	}
	for(i = 0; i < N;i =i +1)
	{
		dataOut = selectionSort(0,i);
	}
    return 0;
}
