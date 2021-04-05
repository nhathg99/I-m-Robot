#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */


int main() 
{

	int diemHoa;
	int diemToan;
	int diemLy;
	float TB;
	
	printf("nhap diem Hoa\n");
	scanf("%d",&diemHoa);
	
	printf("nhap diem Toan\n");
	scanf("%d",&diemToan);
	
	printf("nhap diem Ly\n");
	scanf("%d",&diemLy);
	
	TB = (diemToan + diemLy + diemHoa)/3 ;
	
	printf("Trung binh la (%d + %d + %d)/3 = %.f\n", diemToan,diemLy,diemHoa,TB);

	return 0;
}
