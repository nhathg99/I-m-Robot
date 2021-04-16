#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(){
	int intArr[10] = {0 , 1, 2, 3 , 4, 5, 6, 7, 8, 9};
	int i;
	for(i=0;i <10 ;i++)
	{	
		if(i % 2 == 0)
		{
		printf("\t %d",intArr[i]);
	}
	}

}

