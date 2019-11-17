#include <stdio.h>
#include "myMath.h"

int main () {
	printf ("Please inset a real number: ");
	double x;
	scanf ("%lf",&x);

	double f1 = sub(add(Exp((int)x),Pow(x,3)),2);
	double f2 = add(mul(x,3),mul(Pow(x,2),2));
	double f3 = sub(div(mul(Pow(x,3),4),5),mul(x,2));

	printf (The value of f(x) = e^x + x^3 - 2 at the point %f is: %0.4f \n" ,x ,f1);
	printf (The value of f(x) = 3x + 2x^2 at the point %f is: %0.4f \n" ,x ,f2);
	printf (The value of f(x) = (4x^3)/5 - 2x at the point %f is: %0.4f \n" ,x ,f3);

	return 0;
}