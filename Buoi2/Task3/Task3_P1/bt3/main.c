#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

void main()
{
	int iResult, a = 10, b = 8, c = 6, d = 5, e = 2; 
		
	iResult = a - b - c - d;
	printf("a - b - c - d = %d\n",iResult);
	
	iResult = a - b + c - d;
	printf("a - b + c - d = %d\n",iResult);
	
	iResult = a / b * c * d;
	printf("a / b * c * d = %d\n",iResult);
	
	iResult = a + b / c / d;
	printf("a + b / c / d = %d\n",iResult);
	
	iResult = a % b / c * d;
	printf("a Mod b / c * d = %d\n",iResult);
	
	iResult = a % b % c % d;
	printf("a Mod b mod c mod d = %d\n",iResult);
	
	iResult = a + b / c * d;
	printf(" a + b / c * d = %d\n",iResult);
	
	iResult = a - (b - c) - d;
	printf("a - (b - c) - d = %d\n",iResult);
	
	iResult = (a - (b - c)) - d;
	printf("(a - (b - c)) - d = %d\n",iResult);
	
	iResult = a - ((b - c) - d);
	printf("a - ((b - c) - d) = %d\n",iResult);
	
	iResult = a % (b % c) * d * e;
	printf("a mod (b mod c) * d * e = %d\n",iResult);
	
	iResult = a + (b - c) * d - e;
	printf("a + (b - c) * d - e = %d\n",iResult);
	
	iResult = (a + b) * c + d * e;
	printf("(a + b) * c + d * e = %d\n",iResult);
	
	iResult = (a + b) * (c / d) % e;
	printf("(a + b) * (c / d) % e = %d\n",iResult);		
}


