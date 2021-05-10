#include <conio.h>
#include <stdio.h>
#include <string.h>
void main()
{
char ten[7][10],a[10];
int i,j;
	strcpy(ten[0],"george");
	strcpy(ten[1],"albert");
	strcpy(ten[2],"tina");
	strcpy(ten[3],"xavier");
	strcpy(ten[4],"roger");
	strcpy(ten[5],"tim");
	strcpy(ten[6],"william");
//====================hien ten==========================
	for(i=0;i<7;i++)
	{
	printf("%s \n",ten[i]);
	}
//====================sap xep===========================
	for(i=0;i<7;i++)
	{
	for(j=i+1;j<6;j++)
	{
		if(strcmp(ten[i],ten[j])>0)
		{
			strcpy(a,ten[i]);
			strcpy(ten[i],ten[j]);
			strcpy(ten[j],a);
		}
	}
	}
//================hien ten sau khi sap xep===================
	printf("ten sau khi sap xep:\n");
		for(i=0;i<7;i++)
		{
			printf("%s \n", ten[i]);
		}
	getch();

}
