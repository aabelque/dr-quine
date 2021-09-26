#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#define W "w"
int main()
{
    int idx = 5;
    char s[10], b[10], cmd[500];
    sprintf(s, "Sully_%d.c", idx);
    FILE *fp = fopen(s, W);
    char *a = "#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%c#include <string.h>%c#define W %cw%c%cint main()%c{%c    int idx = %d;%c    char s[10], b[10], cmd[500];%c    sprintf(s, %cSully_%%d.c%c, idx);%c    FILE *fp = fopen(s, W);%c    char *a = %c%s%c;%c    fprintf(fp,a,10,10,10,10,34,34,10,10,10,idx - 1,10,10,34,34,10,10,34,a,34,10,10,10,10,34,34,10,34,34,10,10,10,34,34,10,10,10,10,10,10);%c    fclose(fp);%c    if (idx >= 0) {%c        sprintf(b, %cSully_%%d%c, idx--);%c        sprintf(cmd, %cgcc %%s -o %%s%c, s, b);%c        system(cmd);%c        bzero(cmd, 500);%c        sprintf(cmd, %c./%%s%c, b);%c        system(cmd);%c        bzero(cmd, 500);%c    }%c    return (0);%c}%c";
    fprintf(fp,a,10,10,10,10,34,34,10,10,10,idx - 1,10,10,34,34,10,10,34,a,34,10,10,10,10,34,34,10,34,34,10,10,10,34,34,10,10,10,10,10,10);
    fclose(fp);
    if (idx >= 0) {
        sprintf(b, "Sully_%d", idx--);
        sprintf(cmd, "gcc %s -o %s", s, b);
        system(cmd);
        bzero(cmd, 500);
        sprintf(cmd, "./%s", b);
        system(cmd);
        bzero(cmd, 500);
    }
    return (0);
}
