#include <stdio.h>
#include <stdlib.h>


int nhapso(a,b){
	fflush(stdin);
	printf("Nhap 2 so a va b\n");
	scanf("%d\n %d",&a,&b);
}


//=========================================================================================================================================
int tong(a,b){
int sum = a + b;
	printf("Tong %d + %d = %d\n",a,b,sum);
}


//=========================================================================================================================================
int hieu(a,b){
int sub = a - b;
	printf("Hieu %d - %d = %d\n",a,b,sub);
}


//=========================================================================================================================================
int tich(a,b){
int multi = a * b;
	printf("Tich %d * %d = %d\n",a,b,multi);
}


//=========================================================================================================================================
float thuong(a,b){
	float div ;
	div = (float)a / (float)b;
	printf("Thuong %d \\ %d = %f\n",a,b,div);
}


//=========================================================================================================================================
int out(a,b){
	xoa();
	a = 0;
	b = 0;
}

//=========================================================================================================================================
int xoa(){
	system("cls");
	printf(" TINH TOAN\n==============================\n1. Nhap so\n2. Tinh tong\n3. Tinh hieu\n4. Tinh tich\n5. Tinh thuong\n6. Thoat\n==============================\n ");
}



//=========================================================================================================================================
int main(){		
		int a,b,i=0;
		char check1,check2;
		xoa();
		do{	
			fflush(stdin);
			scanf("%c",&check1);
			if(check1 == '1' )
			{ 	
				do{
				xoa();
				fflush(stdin);
				printf("Nhap 2 so a va b\n");
				scanf("%d\n %d",&a,&b);
				
					do{
					xoa();
					printf("Chon phep toan:\n");
					fflush(stdin);
					scanf("%c",&check2);	
						switch (check2)
						{
							case '2':
								tong(a,b);
								printf("Ban co muon tiep tuc (y-n):");
								fflush(stdin);
								scanf("%c",&check2);
								break;
							case '3':
								hieu(a,b);
								printf("Ban co muon tiep tuc (y-n):");
								fflush(stdin);
								scanf("%c",&check2);
								break;
							case '4':
								tich(a,b);
								printf("Ban co muon tiep tuc (y-n):");
								fflush(stdin);
								scanf("%c",&check2);
								break;
							case '5':
								thuong(a,b);
								printf("Ban co muon tiep tuc (y-n):");
								fflush(stdin);
								scanf("%c",&check2);
								break;
							case '6':
								out(a,b);
								break;
							default:	
							check2 = 'y';
							break;
						}
					}while(check2 == 'y');
					printf("Ban co muon nhap so khac ko (y-n):");
					fflush(stdin);
					scanf("%c",&check2);
			}while(check2=='y');
			}else
				{
				printf("Vui long nhap lai lua chon: ");
				}
		}while(check1!= '1');
}
