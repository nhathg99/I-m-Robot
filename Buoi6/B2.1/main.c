#include <stdio.h>
#include <stdlib.h>
//#include<malloc.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{	
	int i,n,a;
	char *p,*pcpy;
	
	p = (char*)malloc(100*sizeof(char));
	pcpy = (char*)malloc(100*sizeof(char));
	printf("Nhap mang ki tu cua ban:\n");
	scanf("%s",p);	
	n = strlen(p);
	for(i=0;i<n;i++){
		*(pcpy+i) = *(p+(n-1-i));
	}
	system("cls");
	printf("\nChuoi~\t\tChuoi~ dao?\n",pcpy);
	printf("  %s\t\t  %s\n\n",p,pcpy);
	
	getch();	
}

