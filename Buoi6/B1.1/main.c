#include <stdio.h>
#include <stdlib.h>
#include<malloc.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{	
	int i,n,a;
	char *p;
	
	p = (char*)malloc(100*sizeof(char));
	printf("Nhap mang ki tu cua ban:\n");
	scanf("%s",p);
	
	n = strlen(p);
	a = 0;
	for(i=0;i<n;i++){
		if(*(p+i)==*(p+(n-1-i)))
		{
			a++;
		}
	}

	if(a == n){
		printf("Chuoi nay xuoi nguoc giong nhau\n");
	}else
		{
		printf("Chuoi nay doc 1 chieu thoi");
		}
	getch();
	return 0;
		
}

