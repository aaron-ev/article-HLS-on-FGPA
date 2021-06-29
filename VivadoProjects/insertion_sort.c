#include "insertion_sort.h"
/*
void swap(data_inp A[],int i_index,int j_index)
{
    // Swap two elements in A array based on indexes
    data_inp temp = A[i_index];
    A[i_index] = A[j_index];
    A[j_index] = temp;
}
*/
 void insertion_sort(float A[N])
 {
     int i,j;
     for(i = 1; i < N; i = i + 1)
     {
        for(j = i-1; j >= 0; j = j - 1)
        {
            if(A[j] > A[j+1])
            {
            	//Swap operation
                float temp = A[j];
                A[j] = A[j + 1];
                A[j + 1] = temp;
            }
        }
     }
 }
