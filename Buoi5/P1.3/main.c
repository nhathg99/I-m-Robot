#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	
	int i;
	int ma[7] = {34,45,56,67,78,89};
	int daoMa[7];
	printf("\t\tMa Chua dao\tMa da dao\n");
	
	
	for(i=0;i<6;i++)
	{
		daoMa[i] = ma[5-i];
		printf("\t\t%d\t\t%d\n",ma[i],daoMa[i]);
	}	
	
		
		
}
