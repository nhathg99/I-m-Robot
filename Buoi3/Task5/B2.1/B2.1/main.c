//
//  main.c
//  B2.1
//
//  Created by Nhật on 06/04/2021.
//

#include <stdio.h>
    int main(){
    float x,y;
    printf("nhap x,y\n");
    scanf("%f\n%f",&x,&y);
    if (x<2000 || x > 3000) {
        printf("%.f\n",x);
    }
    
    if (y>=100 && y <=500) {
        printf("%.f\n",y);
    }
        return 0;
}
