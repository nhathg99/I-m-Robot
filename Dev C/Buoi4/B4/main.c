#include <stdio.h>
#include <stdlib.h>

void main(void){
	char ch;
	
	printf("nhap vao mot ky tu (A-Z hoac a-z);\n");
	scanf("%c",&ch);
	
	if( (ch < 'A'||ch > 'Z') && (ch < 'a'||ch > 'z') )
		{
			printf("Ky tu ko hop le\n");
		}
	else{
		switch(ch)
			{
			case 'U':
			case 'u':
			case 'E':
			case 'e':
			case 'O':
			case 'o':
			case 'A':
			case 'a':
			case 'I':
			case 'i':
				printf("'%c' la nguyen am ",ch);
			break;
			default:
				printf("'%c' la phu am",ch);		
			}
		}
}
