//
//  main.c
//  index
//
//  Created by Nhat on 19/04/2021.
//

#include <stdio.h>
#include <stdlib.h>

int indexMin(int *p,int i,int len,int a)
{
    int min=*(p+0);
    for(i=0; i <len ; i++){
        if(min > *(p+i))
        {
            min= *(p+i);
            a = i;
        }
    }
    printf("Min in %d is %d\n",a,min);
    return 0;
}
int main()
{
    int *p,i,len,a;
    
    printf("Nhap so phan tu trong mang: ");
    scanf("%d",&len);
    p = (int*)malloc(len*sizeof(int));
    
    for(i=0;i<len;i++){
        printf("Phan tu thu %d",i+1);
        scanf("%d",p+i);
    }
    
    indexMin(p, i, len,a);
    
    return 0;
}
