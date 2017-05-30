//---------------------------------------------------------------
// Kolos 2015/16 CZW 11:00
//
// To compile&link: gcc -o diff diff.c diff.s
// To run:          ./diff
//
//---------------------------------------------------------------

#include <stdio.h>

long max_diff(long a, long b, long c, long d);

int main( void )
{
	//Running few tests
	printf("max_diff(111,222,333,444) = %ld\n",max_diff(111,222,333,444));
	printf("max_diff(-1,2,3,4) = %ld\n",max_diff(-1,2,3,4));
	printf("max_diff(1,2,3,4) = %ld\n",max_diff(1,2,3,4));
	return 0;
}
