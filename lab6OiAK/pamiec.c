#include<stdio.h>
#define Dlugosc 512
int AXA()
{
int i=0,j=0,k=0,s=0;
int tabA[Dlugosc][Dlugosc];
int tabB[Dlugosc][Dlugosc];
for(i = 0; i < Dlugosc; i++)
    for(j = 0; j < Dlugosc; j++)
    {
      for(k = 0; k < Dlugosc; k++) s= tabA[i][k] * tabB[k][j];
    }
}

int AXAT()
{
int i=0,j=0,k=0,s=0;
int tabA[Dlugosc][Dlugosc];
int tabB[Dlugosc][Dlugosc];
for(i = 0; i < Dlugosc; i++)
    for(j = 0; j < Dlugosc; j++)
    {
      for(k = 0; k < Dlugosc; k++) s= tabA[i][k] * tabB[j][k];
    }
}
int main()
{
unsigned long long T1,T2;
T1=time();
AXA();
T2=time()-T1;
printf("czas %llu\n",T2);

T1=time();
AXAT();
T2=time()-T1;
printf("czas %llu\n",T2);

return 0;
}