//
//  main.c
//  b1
//
//  Created by Nhật on 07/04/2021.
//

#include <stdio.h>

int main()
{
    char a;
    
    printf("Nhap vao ky tu :\n");
    scanf("%c",&a);

    printf("Ma ASII cua %c la: %d\n ",a,a);
    
    printf("Nhap vao ky tu :\n");
    fflush(stdin);
    a = getchar();
    printf("Ma ASII cua %c la: %d\n ",a,a);

}
