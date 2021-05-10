#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

void check (int top,int mid , int bottom ,int heit, char gender, char skill, char xtm,int Class){	
	printf("nhap vao gioi tinh cua ban:(M-F)");
	scanf("%c",&gender);
	system("cls");
	if(gender == 'f'|| gender == 'F'){	
			printf("Nhap vao chieu cao (1m68 <=> 168)");
			scanf("%d",&heit);
			system("cls");
			if(heit >= 155){
				printf("So do 3 vong =)) : ");
				fflush(stdin);
				scanf("%d%d%d",&top,&mid,&bottom);
				system("cls");
				if(top >= 75 && mid <= 60 && bottom >= 75 ){
					printf("xinh && thong minh  hay khong (y-n) ?");
					fflush(stdin);
					scanf("%c",&xtm);
					system("cls");
					if(xtm == 'y'){
						printf("Ky nang ntn--(Master(m) - Good(g) - Bad(b) ) ?");
						fflush(stdin);
						scanf("%c",&skill);
						system("cls");
						if(skill == 'm' || skill == 'g'||skill == 'M' || skill == 'G'){
							printf("Tan di cho chi !!!");
							Class = 1;
							printf("Class ? :  ");
						}else {
							printf("ki nang co the ren luyen sau ^^");
							Class = 1;
						}
					}else {
						printf("Body chuan Vot vat duoc ti !!");
							Class = 2;				
					}
				}else {printf("Sorry but you aren't my gruuuuuu'"); Class = 3;
				printf("Loai %c: ",Class);}
			}else {printf("you need more canxi to love meee");Class = 4;
			printf("Loai %c: ",Class);}
		}else {printf("Thoi xin a");Class = 5;
		printf("Loai %c: ",Class);}
}

void Say(char say){
	printf("Hello\n Although this is the first time we met, but I believe that we are born for each other. If you want to find a shortcut to happiness, what are you waiting for without giving me a chance?(y-n)");
	fflush(stdin);
	scanf("%c",&say);
}

void love(){
	printf("1.Go to Cinema \n2. Hang out \n3. Eattttt \n4. Shoppingg");
	getch();	
}

void Break(){
	printf("Talking to the moonnnnnnn!!");
	getch();
}
int main(){
	int top,mid,bottom,heit,*Class1;
	Class1 = &Class;
	char gender,skill,xtm,say;
	check(top,mid,bottom,heit,gender,skill,xtm,Class);
	printf("%d",Class);
	switch(Class){
		case 1:
		case 2:
			Say(say);
			switch (say){
				case 'y':
				case 'Y':
					love();
					break;
				case 'n':
				case 'N':
					Break();
					break;
			}
			break;
		case '3':
		case '4':
		case '5':
			printf("Loaaiiiiiiiiiii");
		break;
	}
	
	getch();
}
