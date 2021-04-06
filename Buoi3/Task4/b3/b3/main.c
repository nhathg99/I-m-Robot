//
//  main.c
//  b3
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main()
{
//A
    int num;
    printf("Nhap so num = ");
    scanf("%d", &num);
    printf("Binh phuong cua so do la: %d\n", num*num);
    
    
//B
    putchar('\n');
    int so1;
    int so2;
    int tong;
    int hieu;
    int tich;
    float thuong;
    
    printf("nhap so thu nhat: \n");
    scanf("%d",&so1);
    
    printf("nhap so thu hai: \n");
    scanf("%d",&so2);
    
    tong = so1 + so2;
    hieu = so1 - so2;
    tich = so1 * so2;
    thuong = (float)so1 / so2;
    
    printf("Tong cua %d va % d la: %d \n",so1,so2,tong);
    printf("Hieu cua %d va % d la: %d \n",so1,so2,hieu);
    printf("Tich cua %d va % d la: %d \n",so1,so2,tich);
    printf("Thuong cua %d va % d la: %.2f \n",so1,so2,thuong);
    
}
