#include<stdio.h>
/*
    com1
*/
void print(char *a)
{
    printf(a,10,10,10,10,10,10,10,10,10,10,10,10,10,34,a,34,10,10,10);
}
int main(void)
{
    /*
        com2
    */
    char *a="#include<stdio.h>%c/*%c    com1%c*/%cvoid print(char *a)%c{%c    printf(a,10,10,10,10,10,10,10,10,10,10,10,10,10,34,a,34,10,10,10);%c}%cint main(void)%c{%c    /*%c        com2%c    */%c    char *a=%c%s%c;%c    print(a);%c}%c";
    print(a);
}
