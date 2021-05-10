//
//  main.c
//  b2
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main(){
    float a;
    char R;
    
    printf("nhap muc luong:\n");
    scanf("%f",&a);
    
    printf("Nhan vien loai:\n");
    scanf("%s",&R);
    switch (R) {
        case 'a':
            printf("Luong nv Loai A:%.f \n",a+300);
            break;
        case 'b':
            printf("Luong nv Loai B:%.f \n",a+250);
            break;

        default:
            printf("Luong nv Loai C:%.f \n",a+100);
            break;
            }

    return 0;
}
  
