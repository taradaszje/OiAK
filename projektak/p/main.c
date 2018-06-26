// C++ program to calculate discrete logarithm
#include <stdio.h>

 
// Function to calculate k for given a, b, m
extern long long int discreteLogarithm(int a, int b, int m);  
 
// Driver code
int main()
{
    	int a = 59, b = 3, m = 1307;
	printf("a = ");
	scanf("%i", &a);
	printf("b = ");
	scanf("%i", &b);
	printf("m = ");
	scanf("%i", &m);
	printf("wynik logarytmu dyskretnego = %lli\n", discreteLogarithm(a, b, m));
	return 0;
}
