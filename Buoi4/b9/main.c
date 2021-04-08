#include <stdio.h>
#include <stdlib.h>

//Da tham khao dau do tren mang ^^

int main()
{
	int a,b,c,temp;
	
	printf("Nhap vao 3 so : \n");
	scanf("%d%d%d",&a,&b,&c);
	
	 if(a>b){	
        temp=a;
        a=b;		
        b=temp;		
    }
 
    if(a>c){
        temp=a;
        a=c;
        c=temp;
    }
 
    // chuy?n s? bé nhì vào b
   if(b>c){
        temp=b;
        b=c;
        c=temp;
    }
 
    printf("\n%d ------> %d -----> %d", a, b, c);
}
