//
//  main.c
//  FlipArray
//
//  Created by Nhat on 19/04/2021.
//

#include <stdio.h>
#include <stdlib.h>
int nor(int *p, int i){
    printf("mang chua flip: ");
    for (i=0; i<5; i++) {
        printf("%d\t",*(p+i));
    }
    printf("\n");
    return 0;
    
}
int flip(int *p,int i){
    printf("mang  da  flip: ");
    for (i=0; i<5; i++) {
        printf("%d\t",*(p+5-1-i));
    }
    printf("\n");

    return 0;
    
}
int main(){
    int *p,i;
    p = (int*)malloc(5*sizeof(int));
    for(i=0;i<5;i++){
        printf("Nhap so thu %d: ",i);
        scanf("%d",p+i);
    }
    nor(p, i);
    flip(p, i);
    return 0;
}

