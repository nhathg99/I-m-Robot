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
    
    t = a-b;
    if (t == a )
    {
        printf("Hieu bang gia tri : %d\n",a);
    }else
        if (t == b){
        
            printf("Hieu bang gia tri : %d\n",b);
        } else printf("Hieu khong bang bat cu gia tri nao");
    return 0;
}
