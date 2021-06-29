

#include "shellSort.h"

/**********************************
*
*
*     shell Sort
*
*
***********************************
*/

/*
void shellSort(float A[N])
{
    int i,j,k,count;
    float temp;
    int test = N-2;
    for (i = test; i > 0; i = test)
    {
        for (j = i; j < N; j++)
        {
            for(k = 0; k >= 0; k = k - 1)
            {
                if (A[k+i] >= A[k])
                    break;
                    //count = -1;
                else
                {
                    count = k - i;
                    temp = A[k];
                    A[k] = A[k+i];
                    A[k+i] = temp;
                }
            }
        }
        test = test/2;
    }
}
*/

void swap(float *A,uint32_t i, int32_t j)
{
    float temp;
    temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}
void shellSort(float A[N])
{
    int index = 0;
    int i;
    int count;
count = index;
    	for(i = 0; i < N; i = count)
        {
        if (index == 0)
            index++;
        if (A[index] >= A[index - 1])
            index++;
        else {
            swap(A,index,index-1);
            index--;
        }
        count = index;
    }
}

