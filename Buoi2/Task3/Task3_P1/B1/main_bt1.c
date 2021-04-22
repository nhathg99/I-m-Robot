#include<stdio.h>

void main()
{
	int s, r, t,   m = 3, n = 5;
	float x = 3.0, y;
	
	t = n/m;
	printf("gia tri cua t khi t = n/m la :%d\n",t);
	
	r = n%m;
	printf("gia tri cua r khi r = n Mod m la :%d\n",r);
	
	y = n/m;
	printf("gia tri cua y khi y = n/m la :%f\n",y);
	
	t = x*y-m/2;
	printf("gia tri cua t khi t = x*y-m/2 la :%d\n",t);
	
	x = x*2.0;
	printf("gia tri cua x khi x = x*2.0 la :%d\n",x);
	
	s = (m+n)/r;
	printf("gia tri cua s khi s = (m+n)/r la :%d\n",s);
	
	y = --n; 
	printf("gia tri cua y khi y = --n la :%.2f\n",y);
	

}

