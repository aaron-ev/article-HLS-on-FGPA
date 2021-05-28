#include <stdio.h>
#include <stdlib.h>
#include "insertion_sort.h"

data_inp A[N];
//data_inp A_out[N];
int main()
{
	data_load(A);
	insertion_sort(A);
	data_unload(A);
	return 0;
}

void data_load(data_inp A[])
{
	FILE *fp;
	int i;

	fp = fopen("testFile.txt","w");
	if(fp == NULL)
	{
		printf("No se ha podido crear el archivo");
		exit(1);
	}
	printf("Se ha creado el archivo");
	//Saving unordered numbers into the file.
	for (i = 0; i < N; i = i + 1)
	{
		A[i] = rand()%100;
		fprintf(fp,"%f\n",A[i]);
	}
	fclose(fp);

}


// Function to show the FFT results
//void data_unload(float xcr[], float xci[], float *salr, float *sali) {

void data_unload(data_inp A[])
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
	//A_out = A;

}
