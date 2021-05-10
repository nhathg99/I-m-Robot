//
//  main.c
//  b2
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main(){
    int a,b,t;
    
    printf("\nnhap so a:");
    scanf("%d",&a);
    
    printf("\nnhap so b:");
    scanf("%d",&b);
    
    t = a*b;
    if (t == 1000)
    {
        printf(" %d * %d  = 1000\n",a,b,t);
    }else
        if (t > 1000){
        
        printf(" %d * %d  > 1000\n",a,b,t);
        } else printf(" %d * %d  < 1000\n",a,b,t);
    return 0;
}
