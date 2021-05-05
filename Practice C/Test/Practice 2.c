#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//=============================================================
int lowerCase(char s[100]){
	
	printf("Nhap chuoi ki tu cua ban:");
	int i,size;
	gets(s);
	size = strlen(s);
	for(i=0;i<size;i++){
		if(s[i]>=65 && s[i]<=140)
		{
			s[i] += 32;
		}
	}
	for(i=0;i<size;i++){
		printf("%c",s[i]);
	}
}
//=============================================================
void main() {
	char s[100];
	lowerCase(s);
}
