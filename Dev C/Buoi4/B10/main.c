#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int d,doi;
	char donvi;
	
	printf("Nhap do dai theo met: ");
	scanf("%d",&d);
	fflush(stdin);
	printf("Chon don vi can doi:\n 1.mm\n 2.cm\n 3.dm\n 4.km\n");
	donvi = getchar();
	
	switch (donvi)
	{
		case '1':
			doi = d * 1000;
			printf("%d m = % dmm\n ",d,doi);
		break;

		case '2':
			doi = d * 100;
			printf("%d m = % dcm\n  ",d,doi);
		break;
		
		case '3':
			doi = d * 10;
			printf("%d m = % ddm\n  ",d,doi);
		break;
		
		case '4':
			doi = d * 0.001;
			printf("%d m = % dkm\n  ",d,doi);
		break;
		
	}
		
	
}
