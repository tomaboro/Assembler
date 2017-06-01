//TOMASZ BOROWICZ

#include <stdio.h>
#include <stdlib.h>

unsigned long chec_div(int a, int b, int c);

int main( void )
{
 	printf("check_div(4,2,0) == %ld\n",check_div(4,2,0));
 	printf("check_div(14,5,0) == %ld\n",check_div(14,5,0));
 	printf("check_div(5,5,1) == %ld\n",check_div(5,5,1));
	return 0;
}