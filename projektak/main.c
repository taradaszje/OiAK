// C++ program to calculate discrete logarithm
#include<bits/stdc++.h>
#include <stdlib.h>
using namespace std;
 
// Function to calculate k for given a, b, m
extern int discreteLogarithm(int a, int b, int m);  
 
// Driver code
int main()
{
    int a = 2, b = 3, m = 5;
	cout << discreteLogarithm(a, b, m) << endl;
	return 0;
}