#include <stdio.h>
int  main(void)
{
    float dientich;
    float chuvi;
    float r;
    
    
    printf("Nhap ban kinh duong tron: \n");
    scanf("%f",&r);
    
    dientich = r * r * 3.14;
    chuvi = r * 2 * 3.14;
    
    printf("dien tich la %.2f\n ",dientich);
    printf("chu vi la %.2f\n ",chuvi);
    
    return 0;
}
