#include<stdio.h>

int giaiThua(n)
{	
	int i;
	int giaiThua=1;
	for(i=0;i<n;i++){
		giaiThua *= (n-i);	
	}
	printf("%d",giaiThua);
}

void main()
{	
	int n;
	printf("nhap giai thua :");
	scanf("%d",&n);
	giaiThua(n);
}
