//
//  main.c
//  b5
//
//  Created by Nhật on 06/04/2021.
//

#include <stdio.h>

int main(){
    int m;
    
    printf("Nhap so diem:\n");
    scanf("%d",&m);
    
    if (m >= 75){
        printf("Loai A\n");
        
    }else if (m>= 65 && m < 75){
        
        printf("Loai B\n");
        
    }else if (m>= 45 && m < 60){
        
        printf("Loai C\n");
    }else if (m>= 35 && m < 45){
        
        printf("Loai D\n");
    }else if (m < 35){
        
        printf("loai E\n");
    }
}
