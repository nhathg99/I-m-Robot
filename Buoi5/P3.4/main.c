#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	int i;
	char Name[5][30];
	
	for (i =0 ; i < 5 ; i++)
	{	
		fflush(stdin);
		printf("Sinh vien thu %d",i+1);
		fgets(Name[i],30,stdin);
	
	}
	
	for (i =0 ; i < 5 ; i++)
	{	
		printf("%s\n",Name[i]);	
	}
	return 0;
}
