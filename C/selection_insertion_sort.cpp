/*
Author: Aaron Escoboza Villegas
Date: September 22, 2020
Description: Functions to perform selection and insertion sort algorithms
@Parameters 
    @Input: An integer pointer to an unordered array and array's length
    @Ouput: void ( The array is changed by the pointer )
*/

#define LEN 5

void selection_sort(int* A, int len);
void insertion_sort(int* A, int len);

//Main function is used to make a test of the two algorithms
int main(void)
{
    int A[LEN] = { 5,4,3,2,1 };
    selection_sort(A, LEN);
    int B[LEN] = { 1,5,10,8,2 };
    insertion_sort(B, LEN);
    return 0;
}

void selection_sort(int* A, int len)
{
    for (int i = 0; i < len - 1; i++)
    {
        int min = A[i];
        int index_min = i; 
        for (int j = i + 1; j < len; j++)
        {
            if (A[j] < min)
            {
                index_min = j;
                min = A[j];
            }
        }
        //Swap 
        int temp = A[i];
        A[i] = A[index_min];
        A[index_min] = temp;
    }
}

void insertion_sort(int* A, int len)
{
    for (int i = 1; i < len; i++)
    {
        int key = A[i];
        int j = i - 1;
        while ( j >= 0 && A[j] > key )
        {
            A[j + 1] = A[j];
            j = j - 1;
        }
        A[j + 1] = key; 
    }
}
