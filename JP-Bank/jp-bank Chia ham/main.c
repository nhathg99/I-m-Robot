//
//  main.c
//  Chuoi
//
//  Created by Nhat on 28/04/2021.
//

#include <stdio.h>
typedef struct taikhoan{
    char name[30];
    int pin;
    int id;
    int sodu;
}tk;
struct taikhoan user;
void Set_Info(){
    printf("Set for card:\n ");
    printf("\t-Default name: ");
    gets(user.name);
    printf("\tDefault ID: ");
    fflush(stdin);
    scanf("%d",&user.id);
    printf("\tDefault PIN: ");
    fflush(stdin);
    scanf("%d",&user.pin);
    
   

}
int Print_info(){
    char c;
     
    printf("\t\tWELLCOME TO JP-BANK\n====================================================\n");
    printf("Name : %c\n",user.name);
    printf("ID   : %d\n",user.id);
    printf("So du: %d\n",user.sodu);
    printf("B co muon quay lai menu khong(y-n): ");
    scanf("%c",&c);
    if(c == 'y'){
    return 1;
    }
    return 0;
}

int check(){
    int pin2,id2;
     
//    Select_Lang();
	printf("--------%c",user.name);
    printf("Nhap Id: ");
    scanf("%d",&id2);
    printf("Nhap PIN: ");
    scanf("%d",&pin2);
    if(id2 == user.id && pin2 == user.pin){
        return 0;
    }
    return 1;
}
int menu(){
    int a,b;
     
    printf("\t\tWELLCOME TO JP-BANK\n====================================================\n1.Ki?m tra th�ng tin t�i kho?n\n2.R�t ti?n\n3.�?i m?t kh?u\nSelect:");
    scanf("%d",&a);
    switch (a) {
        case 1:
            return 1;
            break;
        case 2:
            return 2;
        case 3:
            return 3;
            break;
        default:
            return 0;
            break;
    }
    
}


void main()
{   int Check,a;
    user.sodu = 1000000;
    Set_Info(user);
    do{
    
    Check = check(user);
    if (Check == 0) {
        a = menu();
        switch (a) {
            case 1:
                Print_info();
                break;
            case 2:
                //Rut tien
                break;
            case 3:
                //Doi mat khau
                break;
        }
    }else if (Check ==1 ){
        printf("ID ho?c PIN sai, Vui l�ng th? l?i.\n");
    }
    }while (Check == 1);
    
}
//int Select_Lang(){
//    int a;
//    printf("Select Languege:\n 1. English\n 2. Tieng Viet\nSelect: ");
//    scanf("%d",&a);
//    if (a == 1) {
//        return 1;
//    }
//    return 2;
//}

