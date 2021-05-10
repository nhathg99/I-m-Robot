//
//  main.c
//  b8
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main()
{
    int i = 6;
    float f = 6.789;
    float d = 1.23456789;
    char c = 'j';
    long int lt ;
    
    
    printf("/* ======= Kich Thuoc cac kieu du lieu ======= */\n");
    
    printf("kieu int: %d byte\n",sizeof(int));
    printf("so nguyen : %d\n ",i);
    putchar('\n');
    printf("kieu float: %d byte\n",sizeof(float));
    printf("so thuc: %f\n",f);
    putchar('\n');
    printf("kieu double: %d byte\n",sizeof(double));
    printf("so thuc kieu double : %f\n ",d);
    putchar('\n');
    printf("kieu char: %d byte\n",sizeof(char));
    printf("Ky tu :%c \n",c);
    putchar('\n');
    printf("kieu long int: %d byte\n",sizeof(long int));
    printf("kieu long double: %d byte\n",sizeof(long double));
    putchar('\n');
    printf("/* ============================================ */\n");

    return 0;
    
}
