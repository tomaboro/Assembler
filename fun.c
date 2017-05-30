//---------------------------------------------------------------
// Kolos 2015/16 PT 08:00
//
// To compile&link: gcc -o fun fun.c fun.s
// To run:          ./fun
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

char* fun( char* buf,char* a,char* b);

int main( void )
{
	char *buf = malloc(100);
	
	//Running few tests
	printf("fun(buf,\"bb\",\"ua\") = %s\n",fun(buf,"bb","ua"));
	printf("fun(buf,\"abcd\",\"1234\") = %s\n",fun(buf,"abcd","1234"));
	printf("fun(buf,\"adzjdp\",\"nre ua\") = %s\n",fun(buf,"adzjdp","nre ua"));
	printf("fun(buf,\"bb\",\"ua\") = %s\n",fun(buf,"bb","uaaaaaaaaaa"));
	return 0;
}