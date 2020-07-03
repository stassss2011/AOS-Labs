#include <stdio.h>
#include <math.h>

int main(){
	//float 
	long double b=NAN, a=INFINITY, c;
	c = log10(0)*NAN;
	printf("%lf", (double)c);
	return (int)c;
} 
