

#include "mergeSort.h"

/**********************************
*
*              Merge Sort
*
***********************************
*/

void mergeSort(float A[N])
{
    mergeRecurv(A,0,N-1);
}
void mergeRecurv(float A[N],uint32_t p,uint32_t r)
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

void mergee(float A[N],uint32_t p,uint32_t q,uint32_t r)
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
