//---------------------------------------------------------------
// Kolos 2015/16 CZW 11:00
//
// To compile&link: gcc -o diff diff.c diff.s
// To run:          ./diff
//
//---------------------------------------------------------------

#include <stdio.h>

long max_ind(long a, long b, long c, long d);

int main( void )
{
	//Running few tests
	printf("max_ind(111,222,444,333) = %ld\n",max_ind(111,222,444,333));
	printf("max_ind(4,-4,2,3) = %ld\n",max_ind(4,-4,2,3));
	printf("max_ind(4,4,3,0) = %ld\n",max_ind(4,4,3,0));
	return 0;
}
