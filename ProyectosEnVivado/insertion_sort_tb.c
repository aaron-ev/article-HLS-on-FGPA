#include <stdio.h>

#define LEN 5
void insertion_sort(unsigned int* A, unsigned int len);

int main()
{
	unsigned int A[LEN] = {5,4,3,2,1};

	//Calling to selection algorithm
	insertion_sort(A,LEN);

	//Displaying results
	for(unsigned int i = 0; i < LEN;i++)
	{
		printf(" A[%u] = %u",i,A[i]);
	}
	return 0;
}