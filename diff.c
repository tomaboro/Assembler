//---------------------------------------------------------------
// Program lab_6a - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_6a lab_6a.c lab_6a_asm.s
// To run:          ./lab_6a
//
//---------------------------------------------------------------

#include <stdio.h>

long max_diff(int a, int b, int c, int d);

int main( void )
{
	printf("max_diff(111,222,333,444) = %ld\n",max_diff(111,222,333,444));
	printf("max_diff(-1,2,3,4) = %ld\n",max_diff(-1,2,3,4));
	printf("max_diff(1,2,3,4) = %ld\n",max_diff(1,2,3,4));
	return 0;
}
