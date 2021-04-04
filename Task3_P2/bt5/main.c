#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

void main()

{
	char ten[50],ho[50];
	
	printf("Nhap ten cua ban\n");
	scanf("%s",&ten);
	
	printf("Nhap ho cua ban\n");
	scanf("%s",&ho);
	
	printf("Ho ten :%s %s",ho,ten);
}
