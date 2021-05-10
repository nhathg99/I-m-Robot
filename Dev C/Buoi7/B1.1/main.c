#include<stdio.h>

float chuVi(r)
{
	float chuVi = 2 * 3.14* r; 
	printf("Chu vi hinh tron duong kinh = %d la %.2f\n",r,chuVi);
}

float dienTich(r)
{
	float dienTich = r*r*3.14; 
	printf("Dien tich hinh tron duong kinh = %d la %.2f\n",r,dienTich);
}

void main()
{
	int r;
	printf("nhap ban kinh :");
	scanf("%d",&r);
	chuVi(r);
	dienTich(r);
}
