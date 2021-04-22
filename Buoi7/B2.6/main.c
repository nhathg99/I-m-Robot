#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */


void dienTich(float a, float b){
	float dt;
	dt = a * b;
	printf("Dien tich cua hcn la: %.3f\n",dt);
	
}

void chuVi(float a, float b){
	float cv;
	cv = (a + b)*2;
	printf("Chu vi cua hcn la : %.3f\n",cv);
}

int main(){
	float a,b;
	char s,r;
	do{	system("cls");
		printf("Nhap vao Chieu dai va Chieu rong cua hinh chu nhat:\n");
		fflush(stdin);
		printf("Chieu dai:");
		scanf("%f",&a);
		printf("Chieu rong:");
		scanf("%f",&b);
		do
		{	system("cls");
			printf("\t TINH TOAN\n===================================\n1. Dien Tich\n2. Chu vi\n===================================\n");
			printf("chon :");
			fflush(stdin);
			scanf("%c",&s);
			
			switch (s){
				
				case '1':
					dienTich(a,b);
					break;
				case '2':
					chuVi(a,b);
					break;
				default:
					printf("Vui long chon lai\n");
					s = 'y';
					break;
				}
			printf("Thu not cai con lai khong ?(y-n):");
			fflush(stdin);
			scanf("%c",&s);
		}
		while(s == 'y');
		system("cls");
		printf("\t TINH TOAN\n===================================\n1. Dien Tich\n2. Chu vi\n===================================\n");
		printf("ban co muon tinh manh dat khac ko?(y-n):  ");
		fflush(stdin);
		scanf("%c",&s);
	}while(s == 'y');
}

