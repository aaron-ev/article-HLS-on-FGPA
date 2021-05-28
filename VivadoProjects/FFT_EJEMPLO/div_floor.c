#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <math.h>

unsigned short int div_floor(unsigned short int x, unsigned short int y) {
	return(x >> --y);

}
