#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(){
	int i,n,len;
	int ngAm = 0;
	int phAm = 0;
	char Tu[15];
	char nguyenAm[11] = {'U','u','E','e','A','a','O','o','I','i'};

	printf("Nhap vao tu can dem:");
	fgets(Tu,15,stdin);

	len = strlen(Tu) - 1;
	
	for(i=0;i<len;i++){
		for(n=0;n<11;n++){
			if(Tu[i]==nguyenAm[n])
			{
				ngAm+=1;
			}
		}
		
	}
	phAm = len - ngAm;
	printf("So nguyen am la : %d\nSo phu Am la: %d",ngAm,phAm);
}

