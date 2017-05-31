//---------------------------------------------------------------
// Kolos 2015/16 CZW 12:30
//
// To compile&link: gcc -o generate_str generate_str.c generate_str.s
// To run:          ./generate_str
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

long long max_1_ind(long long* tab, long long n, long long* even_count, long long* neg_count);

int main( void )
{
	long long tab[7] = {1,2,3,4,5,6,7};
	long long* a = malloc(sizeof(long long));
	long long* b = malloc(sizeof(long long));
	long long max = max_1_ind(tab,7,a,b);
	printf("%lld, %lld, %lld\n", 5, 5, max);
	return 0;
}