#define EXP 2.71828

double Pow(double x , int y) { 
	double ans = 1;
	for(int i=0;i<y;i++){
		ans*=x;
	}
	for(int j=0;j>y;j--){ //if y is minus
		ans*=1/x;
	}
	return ans;
}

double Exp(int x) {
	return Pow(EXP,x);
}