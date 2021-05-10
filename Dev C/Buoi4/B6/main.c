#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int a,b,c,max;
	
	printf("nhap 3 canh tam giac a,b,c\n");
	scanf("%d%d%d",&a,&b,&c);
	max = a;
	
	if (b> max)
	{
	max = b;
	}
	
	if (c> max)
	{
	max = c;
	}
		
	if (max*max == b*b + c*c || max*max == a*a + c*c || max*max == b*b + a*a )
		{
		printf("day la tam giac vuong, canh huyen la %d\n",max);	
		}
		else 	printf("day khong phai tam giac vuong\n");
}
