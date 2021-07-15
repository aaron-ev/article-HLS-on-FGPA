/* Insertion sort ascending order */
//#include <stdio.h>
#include <stdlib.h>

#include "insertion_sort.h"

int main()
{
	int i;
	outData_s sDataOut;
	for(i = 0; i < N;i =i +1)
	{
		insertionSort(rand()%65536,0);
	}
	for(i = 0; i < N;i =i +1)
	{
		sDataOut = insertionSort(0,i);
	}
    return 0;
}

