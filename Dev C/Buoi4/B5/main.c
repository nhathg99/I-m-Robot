#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	char a;
	printf("=============================\n");
	printf("1. CF\n");
	printf("2. C\n");
	printf("3. HDJ\n");
	printf("4.DreamWeaver\n");
	printf("5. RDBMS\n");
	printf("6. Learn Jave By Example\n");
	printf("=============================\n");
	
	printf("Chon: ");
	a = getchar();
		
	switch(a)
	{
		case '1':
			printf("Ban chon CF!!\n");
		break;
		case '2':
			printf("Ban chon C!!\n");
		break;
		case '3':
			printf("Ban chon HDJ!!\n");
		break;
		case '4':
			printf("Ban chon DreamWeaver!!\n");
		break;
		case '5':
			printf("Ban chon RDBMS!!\n");
		break;
		case '6':
			printf("Ban chon Learn Jave By Example!!\n");
		break;
		default:
			printf("Lua chon khong hop le\n");
			
 }
	
}
