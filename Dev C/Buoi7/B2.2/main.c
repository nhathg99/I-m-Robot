#include<stdio.h>
#include<malloc.h>

int check(char *p,int i, int len)
{	
	for(i=0;i<len;i++)
	{
//		k = *(p+i)%50;
//		if(k == 0){
			printf("%d\t",*(p+i));
//		}
	}
	
	
}

int main()
{	
	char *p;
	int len,i;
	printf("So phan tu can check:");
	scanf("%d",&len);
	p = (int*)malloc(len*sizeof(int));

	for(i = 0; i<len ; i++){
	scanf("%d", p+i);
}
	check(*p,i,len);
}
