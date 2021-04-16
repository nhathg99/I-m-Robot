#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int mang[10];
	int i,min,max;
	
	for(i = 0;i <10;i++){
	printf("Nhap vao gia tri thu %d:",i+1);
	scanf("%d",&mang[i]);
	}
	system("cls");
	max = mang[0];
	min = mang[0];

	for(i=0 ; i <10; i++)
	{
		printf("so thu %d :%10d\n",i+1,mang[i]);
		
		if(max <mang[i]){
			max = mang[i];
		}
		if(min > mang[i]){
			min = mang[i];
		}
	}
	printf("\n\nMax = %d\nMin = %d\n",max,min);
	
}
