#include <stdio.h>
/* this is a comment for this project */
#define N "Grace_kid.c"
#define W "w"
#define F(x)int main(){FILE *fp;char *a="#include <stdio.h>%c/* this is a comment for this project */%c#define N %cGrace_kid.c%c%c#define W %cw%c%c#define F(x)int main(){FILE *fp;char *a=%c%s%c;fp = fopen(N, W);fprintf(fp,a,10,10,34,34,10,34,34,10,34,a,34,10,10);}%cF(x)%c";fp = fopen(N, W);fprintf(fp,a,10,10,34,34,10,34,34,10,34,a,34,10,10);}
F(x)
