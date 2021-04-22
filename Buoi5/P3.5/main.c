#include <stdio.h>
#include <stdlib.h>

int main(){
	int Sem1[30][4];
//======================================Khai Bao bien =======================================	
	int i,j,n;
	float Tb[30];
	printf("nhap so luong hoc sinh :");
	scanf("%d",&n);
	
//======================================Nhap diem============================================
	for(i=0;i<n;i++){
		printf("Hoc sinh thu %d\n",i+1);
		for(j=0;j<4;j++){
			printf("\tDiem mon hoc %d la: ",j+1,i+1);
			scanf("%d",&Sem1[i][j]);
		}
	}
	
//======================================In ra Diem tung hoc sinh=============================
	system("cls");
	printf("\t\tToan\tLy\tHoa\tAnh\n");
	for(i=0;i<n;i++){
		printf("Hoc sinh %d:\t",i+1);
		for(j=0;j<4;j++){
			printf("%d\t",Sem1[i][j]);
		}printf("\n");
	}
	printf("\n");printf("\n");
	
//======================================Tinh Diem Trung Binh cua tung hoc sinh===============
	for(i=0;i<n;i++){
		printf("Diem trung binh cua Hoc sinh thu %d =  ",i+1);
		Tb[i] = 0;
		for(j=0;j<4;j++){
			Tb[i] = (Tb[i]+Sem1[i][j]);	
		}printf("%.2f\n",Tb[i]/4);
	}
	getch();
	return 0;
}

