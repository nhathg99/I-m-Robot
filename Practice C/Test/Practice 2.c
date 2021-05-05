#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//=============================================================
int lowerCase(char s[100]){
	
	printf("Nhap chuoi ki tu cua ban:");
	gets(s);
	
	strlwr(s);
	printf("Chuoi ki tu lowerCase la : %s",s);
	return 0;
}
//=============================================================
void main() {
	char s[100];
	lowerCase(s);
}
