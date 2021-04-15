#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

void main()
{
	int i,j;
	char temp[30];
	char name[] = { 'George','Albert','Tina','Xavier','Roger','Tim','William'};
	for(i = 0; i<6; i++)
	{for (j = i+1;j < 7; j++)
	{
		if(strcmp(name[i],name[j])>0)
		{
			strcpy(temp,name[i]);
			strcpy(name[i],name[j]);
			strcpy(name[j],temp);
		}
	}
	printf("Cac ten sau khi da xap xep xong: ");
    for(i=0;i<7;i++)
    printf("\n %s",name[i]);
	
	}
}

