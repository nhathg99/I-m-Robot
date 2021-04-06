#include <stdio.h>

int main() {

          int a, b, c, max;

          printf("nhap 3 so a,b,c:\n");
          scanf("%d%d%d",&a,&b,&c);
          max = a;
          if(b > max){
              max =b ;
          }
          
          if (c > max){
              
              max = c;
          }
    printf("max  = %d",max);
    
    }
