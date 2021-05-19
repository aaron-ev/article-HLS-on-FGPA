
#define LEN 5

void selection_sort(int* A, int len);

int main(void)
{
    int A[LEN] = { 5,4,3,2,1 };
    selection_sort(A, LEN);
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
