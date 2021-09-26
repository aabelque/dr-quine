#include<stdio.h>
/*
    This program will print its own source when run.
*/
void print(char *a)
{
    /*
        This function will print its own source code.
    */
    printf(a,10,10,10,10,10,10,10,10,10,10,10,10,10,34,a,34,10,10,10);
}
int main(void)
{
    char *a="#include<stdio.h>%c/*%c    This program will print its own source when run.%c*/%cvoid print(char *a)%c{%c    /*%c        This function will print its own source code.%c    */%c    printf(a,10,10,10,10,10,10,10,10,10,10,10,10,10,34,a,34,10,10,10);%c}%cint main(void)%c{%c    char *a=%c%s%c;%c    print(a);%c}%c";
    print(a);
}
