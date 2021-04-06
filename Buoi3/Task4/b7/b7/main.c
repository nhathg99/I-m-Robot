//
//  main.c
//  b7
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main()
{
    float r,v,dai,rong;
    float cvTron,cvVuong,cvChunhat,dtTron,dtVuong,dtChunhat;
    
    
    printf("nhat cac gia tri r,v,dai,rong\n");
    scanf("%f%f%f%f",&r,&v,&dai,&rong);
    
    cvTron = 2 * r * 3.14;
    cvVuong = v * 4;
    cvChunhat = 2*(dai+rong);
    
    dtTron = 3.14 * r*r;
    dtVuong = v * v;
    dtChunhat = dai*rong;
    printf("cvTron = %.2f  cvVuong = %.2f cvChunhat = %.2f dtTron = %.2f dtVuong = %.2f dtChunhat = %.2f",cvTron,cvVuong,cvChunhat,dtTron,dtVuong,dtChunhat);
    
    
}

