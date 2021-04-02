//
//  main.c
//  soChan
//
//  Created by Nhật on 02/04/2021.
//

#include <stdio.h>
int main(void)
{
    int num;
    int r;
    //printf va scan so nhap vao
    printf("nhap so can tinh\n");
    scanf("%d",&num);
    //chia 2 xac dinh chan le
    r = num % 2;
    //ham if else
    if(r == 0)
    {
        printf("%d la so chan\n",num);
    }else{
        printf("%d la so le\n",num);
    }
    
    return 0;
}
