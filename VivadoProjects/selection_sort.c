

#include "selection_sort.h"

void selection_sort (data_inp A[N])
{
    for (int i = 0; i < N - 1; i++)
    {
    	unsigned int min = A[i];
    	unsigned int index_min = i;
        for (int j = i + 1; j < N; j++)
        {
            if (A[j] < min)
            {
                index_min = j;
                min = A[j];
            }
        }
        //Swap
        unsigned int temp = A[i];
        A[i] = A[index_min];
        A[index_min] = temp;
    }
}
