#include "stdlib.h"
#include "selectionSort.h"
int main(void)
{
	short i;
	outData_s sDataOut;
	for(i = 0; i < N;i = i +1)
	{
		selectionSort(rand()%65536,0);
	}
	for(i = 0; i < N;i = i +1)
	{
		sDataOut = selectionSort(0,i);
	}
    return 0;
}
