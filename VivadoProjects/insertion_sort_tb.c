/* Insertion sort ascending order */
#include <stdio.h>
#include <stdlib.h>
#include  "insertion_sort.h"

//create a txt file and sabe unsorted array
void data_load(float *A);

//save sorted array in txt file
void data_unload(float *A);

/*
void printArray(data_inp A[],int size)
{
    int i;
    for(i = 0; i < size; i = i + 1)
    {
        printf("A[%i] = %f\n",i,A[i]);
    }
    printf("----------\n");
}
*/

int main()
{
    data_load(A);
    //printArray(A,N);
    insertion_sort(A);
    //printArray(A,N);
    data_unload(A);

    return 0;
}

void data_load(float *A)
{
	FILE *fp;
	int i;

	fp = fopen("testFile.txt","w");
	if(fp == NULL)
	{
		printf("No se ha podido crear el archivo");
		exit(1);
	}
	printf("Se ha creado el archivo\n");
	//Saving unordered numbers into the file.
	for (i = 0; i < N; i = i + 1)
	{
		A[i] = rand()%100;
		fprintf(fp,"%f\n",A[i]);
	}
	fclose(fp);

}

void data_unload(float *A)
{
	FILE *fp;
	int i;

	fp = fopen("testFile.txt","a");

	if(fopen == NULL)
	{
		printf("No se ha podido crear el archivo");
		exit(1);
	}
	//Saving ordered numbers into the file.
	fprintf(fp,"------------\n");

	for (i = 0; i < N; i = i + 1)
	{
		fprintf(fp,"%f\n",A[i]);
	}
	fclose(fp);
}
