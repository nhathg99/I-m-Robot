#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{	
	
	int i,n,len;
	char vanBan[100000];
	char a[11] = {'U','u','E','e','A','a','O','o','I','i'};
	
	printf("Nhap van ban: ");
	fgets(vanBan,sizeof vanBan,stdin);
	len = strlen(vanBan);
	
	int c = 0;
	printf("\n\n-Do dai vanBan la %d ky tu\n\n",len);
	for(i=0;i<(len-1);i++)
	{
		for(n = 0;n<10;n++){
			if(vanBan[i] == a[n])
			{	
//			printf("%c %c",vanBan[i],a[n]);
				c=c+1;
			}
		}
	}
	printf("-So nguyen am co trong Van ban la: %d nguyen am\n\n\n\n",c);
	system("pause");
}
