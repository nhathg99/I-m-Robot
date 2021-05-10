#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int num1,num2,k;
	char choise;
	
	printf("Nhap so thu 1:\n");
	scanf("%d",&num1);
	
	printf("Nhap so thu 2:\n");
	scanf("%d",&num2);
	
	printf("\t MENU \n ======================\n + \n - \n x \n : \n Chon:");
	fflush(stdin);
	choise = getchar();
	
	switch (choise)
	{
		case'+':
			
			printf ("Tong cua %d + %d la :  %d\n",num1,num2,num1 + num2);
		case'-':
			
			printf ("Hieu cua %d - %d la :  %d\n",num1,num2,num1 - num2);
		case'x':
		
			printf ("Tich cua %d x %d la :  %d\n",num1,num2,num1 * num2);
		case':':
			
			printf ("Thuong cua %d : %d la :  %f\n",num1,num2,(float) num1/num2);
	}
}
