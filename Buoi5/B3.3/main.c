//
//  main.c
//  Min max
//
//  Created by Nhat on 23/04/2021.
//

#include <stdio.h>

int main(){
    int i,mi,ma,mang[5];
    printf("Nhap vao mang:");
    for (i=0; i<5; i++) {
        scanf("%d",&mang[i]);
    }
    int max = mang[0];
    int min = mang[0];
    for (i=0; i<5; i++)
    {
        if (max < mang[i]) {max = mang[i];}
        if(min > mang[i])   {min = mang[i];}
    }
    mi = 0;
    ma = 0;
    for (i=0; i<5; i++) {
        if (min == mang[i]) { mi+=1;}
        if (max == mang[i]) {ma+=1;}
    }
    printf("Max = %d\nMin = %d\nSo lan hien cua Min:%d\nSo lan hien cua Max:%d\n",max,min,mi,ma);

}
