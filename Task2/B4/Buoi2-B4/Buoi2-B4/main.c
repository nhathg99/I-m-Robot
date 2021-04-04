//
//  main.c
//  Buoi2-B4
//
//  Created by Nhật on 02/04/2021.
//

#include <stdio.h>

int main(void){
    float d;
    float r;
    float dientich;
    
    printf("nhap chieu dai: \n");
    scanf("%f",&d);
    
    printf("nhap chieu rong: \n");
    scanf("%f",&r);
    
    dientich = d * r ;
    
    printf("%.2f * %.2f = %.2f\n",d,r,dientich);
    
    return 0;
}
