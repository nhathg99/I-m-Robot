#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main ()
{
	int a,b,c,delta;
	float X1,X2;
	printf("\n nhap vao he so a,b,c:\n");
	scanf("%d%d%d",&a,&b,&c);
	
	delta = b*b - 4 * a * c;
	
	if (delta > 0)
	{
		printf("Phuong trinh %dX^2 + %dX + %d co 2 nghiem:\n",a,b,c);
		X1 = (-b-sqrt(delta)) / (2*a);
		X2 = (-b+sqrt(delta)) / (2*a);
		printf(" X1 = %.2f\n",X1);
		printf(" X2 = %.2f\n",X2);	
	} else if (delta == 0)
			{
				printf("Phuong trinh %dX^2 + %dX + %d co nghiem kep:\n",a,b,c);
				printf("X1 = X2 = -%d/%d ",b,a);
			
			}else printf("Phuong trinh vo nghiem \n");
	
}
