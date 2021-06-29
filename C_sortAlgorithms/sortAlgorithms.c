

/*
*   input: a pointer to an unsorted array
*   ouput: during algorithm execution unsorted array is sorted by using a pointer to char
*/

#include "sortAlgorithms.h"
#include <stdio.h>
#include "math.h"
void printArray(float *A,uint32_t sizeA)
{
    int i;
    for(i = 0;i < sizeA; i = i + 1)
    {
        printf("A[%d] = %f \n",i,A[i]);
    }
}
void swap(float *A,uint32_t i, int32_t j)
{
    float temp;
    temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}

/**********************************
*
*              Heap Sort
*
***********************************
*/
void maxHeapify(float *A,int32_t i)
{
    int32_t largest;
    uint32_t l,r;

    l = LEFT(i);
    r = RIGHT(i);

    if(l <= heapSize && A[l] > A[i])
        largest = l;
    else
        largest = i;
    if(r <= heapSize && A[r] > A[largest])
        largest = r;
    if(largest != i)
    {
       //swap A[i] with A[largest]
       swap(A,i,largest);
       maxHeapify(A,largest);
    }
}
void buildMaxHeap(float *A)
{
    int32_t i;
    for(i = floor(heapSize/2);i >= 0;i-- )
         maxHeapify(A,i);
}

void heapSort(float *A,uint32_t sizeA)
{
    heapSize = sizeA;
    int32_t i;
    buildMaxHeap(A);
    for(i = sizeA; i >= 1;i--)
    {
        swap(A,0,i);
        heapSize--;
        maxHeapify(A,0);
    }
}
/**********************************
*
*        Heap Sort no recursively
*
***********************************
*/

void heapSort_noRecurv(float *A,uint32_t sizeA)
{
    int i,j;
    //printArray(A,sizeA);
    for(i = (sizeA/2)-1; i >=0; i = i - 1)
    {
        maxHeapify_noRecurv(A,i,sizeA);
        //printArray(A,sizeA);
    }
     for(i = sizeA - 1; i >=0; i = i - 1)
    {
        swap(A,i,0);
        maxHeapify_noRecurv(A,0,i);
    }
}
void maxHeapify_noRecurv(float *A,uint32_t startA, uint32_t endA)
{
    int current = startA;
    while(current * 2 + 1 < endA)
    {
        uint32_t left = current * 2 + 1;
        uint32_t right = current * 2 + 2;

        if(left < endA && A[current] < A[left])
            current = left;
        if(right < endA && A[current] < A[right])
            current = right;
        if(current != startA)
        {
            swap(A,current,startA);
            startA = current;
        }
        else
            break;
    }
}

/**********************************
*
*              Insertion Sort
*
***********************************
*/
void insertionSort(float *A,uint32_t sizeA)
{
    for (int i = 1; i < sizeA; i++)
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
/**********************************
*
*              Selection Sort
*
***********************************
*/
void selectionSort(float *A,uint32_t sizeA)
{
    for (int i = 0; i < sizeA - 1; i++)
    {
    	unsigned int min = A[i];
    	unsigned int index_min = i;
        for (int j = i + 1; j < sizeA; j++)
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

/**********************************
*
*              Merge Sort
*
***********************************
*/

void mergeSort(float *A,uint32_t sizeA)
{
    mergeRecurv(A,0,sizeA-1);
}
void mergeRecurv(float *A,uint32_t p,uint32_t r)
{
    uint32_t q;
    if(p < r)
    {
        q = floor((p + r) / 2);
        mergeRecurv(A,p,q);
        mergeRecurv(A,q + 1,r);
        mergee(A,p,q,r);
   }
}

void mergee(float *A,uint32_t p,uint32_t q,uint32_t r)
{
    uint32_t n1 = q - p + 1;
    uint32_t n2 = r - q;
    int32_t L[n1+1],R[n2 + 1];
    uint32_t i,j,k;

    for(i = 0;i < n1; i = i + 1)
        L[i] = A[p + i];

    for(j = 0; j < n2; j = j + 1)
        R[j] = A[q + j + 1];

    L[n1] = INT_MAX;
    R[n2] = INT_MAX;

    i = 0;
    j = 0;

    for(k = p; k <= r; k = k + 1)
    {
        if(L[i] <= R[j])
        {
            A[k] = L[i];
            i++;
        }
        else
        {
            A[k] = R[j];
            j++;
        }
    }
}
/**********************************
*
*              Bubble Sort
*
***********************************
*/
void bubbleSort(float *A,uint32_t sizeA)
{
        int32_t i,j;

        for(i = sizeA - 1; i >= 0; i = i - 1)
        {
            for(j = 0; j < i; j = j + 1)
            {
                if(A[j] > A[j+1])
                    swap(A,j,j+1);
            }
        }
}
/**********************************
*
*               Shell Sort
*
***********************************
*/
/*
void shellSort(float *A,uint32_t sizeA)
{
    int i,j,n,count;
    float nf;
    nf = (float)sizeA;

    for(i = 0; i <= 1;i = i + 1)
    {

        n = (int)ceil(nf / 2);
        nf = n;
        count = 0;
        if(n <= 2)
            n = 1;
        for(j = 0; j < sizeA; j = count)
        {
            if(A[j] > A[j + n])
                swap(A,j,j+n);
            count++;
            if((j+1)+n == sizeA)
                count = sizeA;
            printArray(A,6);
        }
    }
}
*/
void shellSort(float *A, uint32_t sizeA)
{
    int i,j,k,count;
    float temp;

    for (i = sizeA / 2; i > 0; i = i / 2)
    {
        for (j = i; j < sizeA; j++)
        {
            for(k = j - i; k >= 0; k = k - i)
            {
                if (A[k+i] >= A[k])
                    break;
                else
                {
                    count = k - i;
                    temp = A[k];
                    A[k] = A[k+i];
                    A[k+i] = temp;
                }
            }
        }
    }
}
/**********************************
*
*               Gnome Sort
*
***********************************
*/
void gnomeSort(float *A,uint32_t sizeA)
{
    int index = 0;

    while(index < sizeA)
    {
        if (index == 0)
            index++;
        if (A[index] >= A[index - 1])
            index++;
        else
        {
            swap(A,index,index-1);
            index--;
        }
    }
}
