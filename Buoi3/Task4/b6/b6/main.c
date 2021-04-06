//
//  main.c
//  b6
//
//  Created by Nhật on 05/04/2021.
//

#include <stdio.h>

int main(){
    int sum;
    int tb;
    int toan;
    int ly;
    int hoa;
    
    
    printf("Nhap diem toan : \n");
    scanf("%d",&toan);
    
    printf("Nhap diem ly : \n");
    scanf("%d",&ly);
    
    printf("Nhap diem hoa : \n");
    scanf("%d",&hoa);
    
    sum = toan + ly + hoa;
    tb = (toan + ly + hoa)/3;
    
    printf("tong la: %d\n",sum);
    printf("tb la : %d\n",tb);
    
}
