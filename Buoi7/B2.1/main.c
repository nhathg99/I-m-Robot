#include<stdio.h>

int getArea(a,b,c)
{	
	float p,S;
	p = (a+b+c)/2;
	S = sqrt(p*(p-a)*(p-b)*(p-c));
	printf("%.3f",S);
}

void main()
{	
	int r,a,b,c;
	printf("nhap vao 3 canh a,b,c cua tam giac :\n");
	scanf("%d%d%d",&a,&b,&c);
	getArea(a,b,c);
}
