#include <stdio.h>
#include <stdlib.h>
#include <string.h>
 
int main() {
   
   int i,j;
   int mang1[5];
   float mang2[10];
   
   	for(i = 0 ; i < 5; i ++){
   
   	printf("nhap vao so thu %d : ", i + 1);
   	scanf("%d",&mang1[i]);
	}
	
	for(i = 0; i < 10 ; i ++)
	{	if(i<5)
		{
		mang2[i] = mang1[i];
	}
	else {
		if (i >=5 && i < 10)
		{
			mang2[i] = 0;
		}
	}
	}
	printf("Mang 1 gom nhung Phan tu: ");
	for(j = 0; j < 5 ; j ++)
	{
		 printf("%d,",mang1[j]);
	}
	printf("\nMang 2 gom nhung Phan tu: ");
	for(i = 0; i < 10 ; i ++)
	{
		printf("%.f,",mang2[i]);
	
	}
	
	
	
}

