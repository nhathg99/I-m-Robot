#include<stdio.h>  
#include<conio.h>  

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

//=============================================================
void main(){  
	int n,m,sum;  
	printf("Nhap mot so bat ky: ");  
	scanf("%d",&n);  
	while(n>0)  
	{  
		m=n%10;  
		
		sum += m;  
		
		n=n/10;  
	}  
	printf("\nTong cac so trong so nguyen da cho la  = %d",sum);
}
