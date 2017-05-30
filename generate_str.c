//---------------------------------------------------------------
// Kolos 2015/16 CZW 11:00
//
// To compile&link: gcc -o generate_str generate_str.c generate_str.s
// To run:          ./generate_str
//
//---------------------------------------------------------------

#include <stdio.h>

char* generate_str( char* s,int c,int n, int inc);

int main( void )
{
	char* str = malloc(100);
	
	//Running few tests
	printf("%s\n",generate_str(str,1,1,1);
	return 0;
}