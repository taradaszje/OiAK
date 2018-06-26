#include <stdio.h>

extern long long unsigned rdts_my(char z);


int main(void)
{
	unsigned long long wynik = rdts_my('1');

	int x =0;
	printf("moze troche dluzej");
	printf("a\n");
	unsigned long long wynik2 = rdts_my('1');
	printf("Time: %llu\n", wynik2-wynik);
	return wynik;

}

