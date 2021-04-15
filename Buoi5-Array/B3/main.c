#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	int i;
	char Name[5][30];
	
		for(i = 0; i < 5;i++){

		printf("Sinh vien thu %d",i+1);
		gets(Name[i]);
		}
		for(i = 0; i <5;i++){
		printf("\nHo va ten sinh vien: %s",Name[i]);
		}
	
}
