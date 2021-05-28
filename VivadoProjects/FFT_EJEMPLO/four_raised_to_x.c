#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <math.h>

unsigned short int four_raised_to_x(unsigned short int x) {

	unsigned short int i=1;

	return ( ((i << x) << x) );
}