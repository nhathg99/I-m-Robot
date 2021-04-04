//
//  main.c
//  Buoi2-Bt1
//
//  Created by Nhật on 02/04/2021.
//

#include <stdio.h>

int main(void)
{
    int a;
    
    printf("nhap so a\n");
    scanf("%d",&a);
    
    if( a == 0)
    {
        printf("%d = 0\n",a);
        
    }else{
        if(a > 0){
            
            printf("%d la so duong\n",a);
        }else{
            printf("%d la so am\n",a);
            
        }
        
    }
}
