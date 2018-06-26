#include <stdio.h>

unsigned long long int my_rdtsc(char a);
extern float calka(int n, float xp, float xk);
extern float calka_simd(int n, float xp, float xk);
//single input multiple data

int main(void){

	int precyzja, a, b = 0;
	precyzja = 4000;
	//printf("Podaj precyzje, która jest wielokrotnością 4(inne dają nieprawidłowe wyniki): ");
	//scanf("%d", &precyzja);
	printf("Podaj dolna granice: ");
	scanf("%d", &a);
	printf("Podaj gorna granice: ");
	scanf("%d", &b);

	printf("---\n");

	unsigned long long int czas_calka = my_rdtsc(0);
 	float wynik_calka_norm = calka(precyzja, a, b);
	czas_calka = my_rdtsc(0) - czas_calka;

	unsigned long long int czas_calka_simd = my_rdtsc(0);
 	float wynik_calka_simd = calka_simd(precyzja, a, b);
	czas_calka_simd = my_rdtsc(0) - czas_calka_simd;

	//long long unsigned int czas_calka = czas_calka_norm_kon - czas_calka_norm_pocz;
	//long long unsigned int czas_calka_simd = czas_calka_simd_kon - czas_calka_simd_pocz;


        printf("FPU:\t%f\tw czasie:\t%llu\n", wynik_calka_norm, czas_calka);
        printf("SSE:\t%f\tw czasie:\t%llu\n", wynik_calka_simd, czas_calka_simd);

	unsigned long long int czas = czas_calka/czas_calka_simd;
	printf("SSE jest szybsze: %llu razy\n",czas );	

	return 0;
}
