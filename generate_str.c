//---------------------------------------------------------------
// Kolos 2015/16 CZW 12:30
//
// To compile&link: gcc -o generate_str generate_str.c generate_str.s
// To run:          ./generate_str
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

char* generate_str( char* s,int c,int n, int inc);

int main( void )
{
	char *str = malloc(100);
	
	//Running few tests
	printf("generate_str(str,'f',9,0) = %s\n",generate_str(str,'f',9,0));
	printf("generate_str(str,'a',7,0) = %s\n",generate_str(str,'a',7,0));
	printf("generate_str(str,'b',3,1) = %s\n",generate_str(str,'b',3,1));
	return 0;
}