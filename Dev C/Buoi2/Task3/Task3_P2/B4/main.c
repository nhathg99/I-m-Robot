#include <stdio.h>
#include <stdlib.h>


void main()
{
	char name [50]; //em tham khao tren mang sao lai phai them [50] vao neu khong them thi khong chay duoc
	int basic;
	int daper;
	float bonper;
	float loandet;
	float salary;
	
	printf("Nhap ten nhan vien:\n");
	scanf("%s",&name);
	
	printf("Basic:\n");
	scanf("%d",&basic);
	
	printf("Daper:\n");
	scanf("%d",&daper);
	
	printf("bonper:\n");
	scanf("%f",&bonper);
	
	printf("Loandet:\n");
	scanf("%.2f",&loandet);
	
	salary = basic + (basic * daper/100)+ bonper*basic/100 - loandet;
	
	printf("name"); putchar('\t');printf("Basic"); putchar('\t');printf("Salary\n");
	printf("%s",name);putchar('\t');printf(" %d",basic);putchar('\t');printf(" %f",salary);

}
