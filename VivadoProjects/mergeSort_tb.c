#include <stdio.h>
#include <stdlib.h>
#include "bubbleSort.h"

int main(void)
{
	short i;
	data_inp dataOut;
	for(i = 0; i < N;i = i +1)
	{
		bubbleSort(rand()%65536,0);
	}
	for(i = 0; i < N;i = i +1)
	{
		dataOut = bubbleSort(0,i);
	}
    return 0;
}
