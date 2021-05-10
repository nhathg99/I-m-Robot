//
//  main.c
//  b1
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main(){
    
    int a,b,r;
    
    printf("\nnhap so a:");
    scanf("%d",&a);
    
    printf("\nnhap so b:");
    scanf("%d",&b);
    
    r = a % b;
    
    if (r == 0)
    {
        printf("a chia het cho b\n");
    } else printf("a khong chia het cho b\n");
    return 0;
}
