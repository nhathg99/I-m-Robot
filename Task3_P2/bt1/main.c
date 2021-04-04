/* Chuong trình này trình bày vi?c s? d?ng h?ng và d?nh d?ng trong hàm putchar() */

#include <stdio.h>
void main()
{	
	printf("Phan 1A\n");
	putchar('\n');

	int sum;
	char letter;
	float discount;
	float dump ;
	sum = 5;
	discount = 2;
	dump = 6.05;
	letter = 'j';
	printf("Gia tri cua Sum la: %d\n\n",sum);
	printf("Wellcome\n");
	printf("Bien ky tu Letter: %c\n",letter);
	printf("Bien so thuc Discount:%.f\n",discount);
	printf("Bien so thuc dump : %.2f\n",dump);
	
	putchar('\n');
	
	printf("Phan 1B\n");
	
	float discount_rate;
	
	printf("nhap so bat ki :");
	scanf("%d",&sum);
	printf("Sum =%d\n",sum);
	
	printf("nhap Discount_rate: \n");
	scanf("%f",&discount_rate);
	printf("Discount_rate = %.2f\n",discount_rate);
	
	return 0;
}
