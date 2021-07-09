/* Insertion sort ascending order */
//#include <stdio.h>
#include <stdlib.h>

#include  "insertion_sort.h"

int main(void)
{
	int i;
	data_inp dataOut;
	for(i = 0; i < N;i =i +1)
	{
		insertionSort(rand()%65536,0);
	}
	for(i = 0; i < N;i =i +1)
	{
		dataOut = insertionSort(0,i);
	}
    return 0;
}

