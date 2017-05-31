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
        char *buf1 = malloc(100);
        char *buf2 = malloc(100);
        char *buf3 = malloc(100);
        char *buf4 = malloc(100);
        char *buf5 = malloc(100);

        //Running few tests
        printf("fun(buf,\"bb\",\"ua\") = %s\n",fun(buf,"bb","ua"));
        printf("fun(buf1,\"abcd\",\"1234\") = %s\n",fun(buf1,"abcdefgh","1234"));
        printf("fun(buf2,\"adzjdp\",\"nre ua\") = %s\n",fun(buf2,"adzjdp","nre ua"));
        printf("fun(buf3,\"bb\",\"ua\") = %s\n",fun(buf3,"bb","ua"));
        printf("fun(buf4,\"1\",\"234\") = %s\n",fun(buf4,"1","234"));
        printf("fun(buf5,\"1345\",\"2\") = %s\n",fun(buf5,"1345","2"));
        return 0;