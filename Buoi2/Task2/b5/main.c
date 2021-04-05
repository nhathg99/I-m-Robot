//
//  main.c
//  Buoi2-b5
//
//  Created by Nhật on 02/04/2021.
//

#include <stdio.h>

int main(){
    float V;
    float chieucao;
    float chieurong;
    
    printf("nhap chieu cao hinh tru :\n");
    scanf("%f",&chieucao);
    
    printf("nhap ban kinh hinh tru :\n");
    scanf("%f",&chieurong);
    
    
    V = chieucao * chieurong * chieurong * 3.14;
    
    
    printf("the tich hinh tru la: %f \n",V);
    
    return 0;
}
