#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int a,b,c;
	
	printf("Nhap 3 so a,b,c: \n");
	scanf("%d%d%d",&a,&b,&c);
	
	if(a > b && b > c)							//a > b > c
	{
		printf("%d   %d    %d\n",c,b,a);
	}
	
	if(a > c && c > b)							//a > c > b
	{
		printf("%d   %d    %d\n",b,c,a);
	}
	
	if(b > a && a > c)							//b > a > c
	{
		printf("%d   %d    %d",  c,a,b);
	}
	
	if(b > a && c > a)							//b > c > a
	{
		printf("%d   %d    %d",  a,c,b);
	}
	
	if(c > b && b > a)							//c > b > a
	{
		printf("%d   %d    %d",  a,b,c);
	}
	
	if(c > a && a > b)							//c > a > b
	{
		printf("%d   %d    %d",  b,a,c);
	}
	
}

