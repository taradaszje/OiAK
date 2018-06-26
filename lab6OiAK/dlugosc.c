#include<stdio.h>
#define Dlugosc 512
int main()
{
int i=0,j=0,krok=0,s=0,a=0;
unsigned long long T1=0,T2=0;
int tabA[Dlugosc][Dlugosc];
for(i = 0; i < Dlugosc; i++)
{
	for(j = 0; j < Dlugosc; j++)
    	{
      	krok=i*Dlugosc+j;
	T1=time();
	s=tabA[i][j];
	T2=time()-T1;
	printf("%d czas %llu\n",krok,T2);
    	}
}
return 0;
}