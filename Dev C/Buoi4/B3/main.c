#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int a,b,c;
	
	printf("Nhap vao so a:\n");
	scanf("%d%d%d",&a,&b,&c);
	
	if(a > b && a > c)
	{
	printf("Max = %d\n",a);	
	}else 
	
			if(b > a && b > c)
			{
			printf("Max = %d\n",b);
			}else 
			
					if(c > a && c > c)
					{
					printf("Max = %d\n",c);
					}
}

