#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int a,b;
	printf("Nhap vao 2 so bat ki khac 0: \n");
	scanf("%d%d",&a,&b);
	if(a != 0 && b != 0) 														// Xet truong hop a or b != 0
	{	
		if (a != b)																// Xet truong hop a != b
		{	
			if (a % b == 0)														// truong hop a % b = 0
			{			
			printf ("%d la uoc cua %d\n",b,a);									// --> b la uoc cua a
			}else 
				if (b % a == 0) 												// truong hop b % a = 0
					{
					printf ("%d la uoc cua %d\n",a,b);							// --> b la uoc cua a
					}
					else 
						printf ("%d va %d khong la gi cua nhau ^^\n",a,b);		// truong hop a % b != 0 --> ko la gi
		}else 
			printf ("%d = %d \n",a,b);											// a = b
	}else 
		printf("ky tu ban nhap khong hop le\n");								// a || b = 0
}
