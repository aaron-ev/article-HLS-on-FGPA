#include <stdio.h>
#include <stdlib.h>
#include "heapSort.h"

int main(void)
{
	int i;
	outData_s dataOut;
	for(i = 0; i < N; i = i +1)
	{
		heapSort(rand()%65536,0);
	}
	for(i = 0; i < N; i = i +1)
	{
		dataOut = heapSort(0,i);
	}
    return 0;
}
