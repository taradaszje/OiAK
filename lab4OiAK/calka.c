#include <stdio.h>

unsigned long long int my_rdtsc(char a);
float calka(int n, float xp, float xk);


//https://www.wolframalpha.com/input/?i=integral+of+sqrt(x%5E2%2B1)+-+1++from+2+to+5

int main(void){

	int precyzja, a, b = 0;

	printf("Podaj precyzje: ");
	scanf("%d", &precyzja);
	printf("Podaj dolna granice: ");
	scanf("%d", &a);
	printf("Podaj gorna granice: ");
	scanf("%d", &b);

	printf("---\n");

	unsigned long long int czas_calka_norm_pocz = my_rdtsc(1);
 	float wynik_calka_norm = calka(precyzja, a, b);
	unsigned long long int czas_calka_norm_kon = my_rdtsc(1);

	

	long long unsigned int czas_calka = czas_calka_norm_kon - czas_calka_norm_pocz;
       


        printf("FPU:\t%f\tw czasie:\t%llu\n", wynik_calka_norm, czas_calka);
	

	

	return 0;
}