#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	char a,check;
	int b,c,d;
	printf("Nhap vao mot chu trong bang Alphabet<A-Z,a-z>:\n");
	a = getchar();
		
	if (a >= 'a'&& a <= 'z')
	{
	printf("'%c' la chu cai thuong\n",a);		
	}
	else if (a >= 'A'&& a <= 'Z')
		{
		printf("'%c' la chu cai hoa\n",a);	
	  	}
		  else   if (a > '0'&& a < '9')
					{
						printf("'%c' la chu so\n",a);
					}else
						{
						printf("ko hop le\n");
						}
}	


