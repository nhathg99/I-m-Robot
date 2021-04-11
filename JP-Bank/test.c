#include <stdio.h>
#include <stdlib.h>

int main()
{
	//____________________________________________________________________________________________________ KHAI BAO___________________________________________________________________________________________________________________________________________________

int budget = 10000000;  //         10.000.000 $
int id,pin,select,trueValue = 0,newpin1,newpin2,checkpin,default_Pin,default_id,slang; // id,pin = bien check id,		pin select = bien lua chon,	trueValue bien lap neu lua chon sai,  newpin1,2 la bien check mat khau moi co giong nhau khong
char s,lang,name[150];	
long w;																		// checkpin la bien lap neu ma pin nhap khac nhau , default pin, id la bien nhap 					
	printf("Set your Name:");
	fgets(name, sizeof(name), stdin);	
	
	printf("Set ID is :");
	scanf("%d",&default_id);
	
	printf("Set your default Pin:");
	scanf("%d",&default_Pin);
	system("cls");
	//____________________________________________________________________________________________________ Chon Ngon Ngu___________________________________________________________________________________________________________________________________________________	
do{
	slang = 0;
	printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n================================\nSelect Languege:\n1.English\n2.Tieng Viet\n");
	printf("Select:");
	scanf("%c",&lang);
	system("cls");
switch(lang) //===================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
{
	case '1':		//___________________________________________________________________________________ENGLISH____________________________________________________________________________________________________________________________________________________________________________________________________
		printf("Enter your ID:\n");
		scanf("%d",&id);	
		printf("Enter your Password(2):\n");
		scanf("%d",&pin);
		
		if(id == default_id && pin == default_Pin)
		{
			do
			{
			
				system("cls");
//				printf("pin la %d\n",pin);
//				printf("default pin la %d\n",default_Pin);
				printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n --------------------------------- \n1.Account Information \n2.Withdraw Money \n3.Change your Password \n");
				fflush(stdin);
				scanf("%c",&select);
				switch (select)
				{	
					case '1':
						system("cls");
						printf("--------WELLCOME TO JP-BANK--------\n================================\nChu The:%s\nMa The : %d\n \nSo du: %d\nHave a NICE DAY ^^\n================================\n",name,id,budget);
						break;
 					case '2':	
					{	do
						{
							trueValue = 0;
							system("cls");								
							printf("Select the money you want to withdraw (1 - 7):\n 1.100.000\n 2.200.000\n 3.500.000\n 4.1.000.000\n 5.3.000.000\n 6.5.000.000\n 7.Other amount \n ");
							printf("Select:");
							fflush(stdin);
							scanf("%d",&select);
							
								switch(select)
								{
									case 1:
										w = 100000;
									break;
				
									case 2:
										w = 200000;
									break;
				
									case 3:
										w = 500000;
									break;
				
									case 4:
										w = 1000000;
									break;
				
									case 5:
										w = 3000000;
									break;
			
									case 6:
										w = 5000000;
									break;
			
									case 7:
										do
										{
											printf("Withdraw: ");
											fflush(stdin);
											scanf("%ld",&w);
											if (w % 50 != 0)
												{
												printf("Invalid amount, please enter again: \n");
												printf("Other amount: ");
												fflush(stdin);
												scanf("%ld",&w);
												}
										}while (w % 50 !=0);
									break;
								
									default:
										trueValue = 1;
									break;
								}
							
							
						}while(trueValue == 1);	
								if(w > budget)
								{
									printf("Your money is not enough to make the Withdraw,please enter again: \n");
								}else 
									if(w <= budget)
									{								
										system("cls");
										printf("\n\n\n\n\nWithdraw successfully %d$, Account balance :%d$\n",w,budget - w);
										budget =budget-w;
									}
					}
					break;
					
					case '3':
						do
						{
							printf("\t \t \n_________________Change your password______________\n enter your old password:");
							fflush(stdin);
							scanf("%d",&newpin1);				
							if(default_Pin == newpin1)
								{	
									checkpin = 1;
									printf("Enter New Pin:");
									scanf("%d",&newpin1);
									printf("Enter New Pin again:");
									scanf("%d",&newpin2);
									if(newpin1 == newpin2)
										{
										system("cls");
										printf("Your pin was changed!!\n\n");
										default_Pin = newpin2;
										}else
											{
											system("cls");
											printf("\n2 You entered diferrent pin, please try again \n");
											checkpin = 0;
											}
								}else 
									{
									printf("Sai mat khau cu vui long nhap lai:");
									(checkpin == 0);
									}
						}while(checkpin == 0);
					break;	
				}
			printf("\nDo you want to continue (y-n): ");
			fflush(stdin);
			scanf("%c",&s);
			}while(s == 'y');
			system("cls");
		}else	
			printf("Your ID or Password is incorrect, Please try again !\n");
	break;
	
	case '2':	//___________________________________________________________________________________VIETNAMESE_________________________________________________________________________________________________________________________
	
		printf("Nhap Vao -ID:\n");
		scanf("%d",&id);	
		printf("Nhap Vao -Ma Pin:\n");
		scanf("%d",&pin);
		if(id == default_id && pin == default_Pin)
			{
			do
			{
				system("cls");
				printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n================================\n1.Thong tin tai khoan \n2.Rut Tien \n3.Doi mat khau \n");
				fflush(stdin);
				scanf("%c",&select);
				switch (select)
				{	
					case '1':
						system("cls");
						printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n================================\nChu The:%s\nMa The : %d\nSo du: %d \n Mot Ngay Tot Lanh ^^\n================================\n",name,id,budget);
						break;
 					case '2':	
					{	do
						{
							trueValue = 0;
							system("cls");								
							printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n================================\nChon So Tien Ban Muon Rut (1 - 7):\n 1.100.000\n 2.200.000\n 3.500.000\n 4.1.000.000\n 5.3.000.000\n 6.5.000.000\n 7.So khac\n ");
							printf("Lua chon:");
							fflush(stdin);
							scanf("%d",&select);
							switch(select)
							{
								
								case 1:
									w = 100000;
								break;
								
								case 2:
									w = 200000;
								break;
								
								case 3:
									w = 500000;
								break;
							
								case 4:
									w = 1000000;
								break;
							
								case 5:
									w = 3000000;
								break;
								
								case 6:
									w = 5000000;
								break;
								
								case 7:
									do
									{
										printf("Nhap So tien: ");
										fflush(stdin);
										scanf("%ld",&w);
										if (w % 50 != 0)
											{
											printf("So tien khong hop le, Vui long thu lai \nNhap so tien:");
											fflush(stdin);
											scanf("%ld",&w);
											}
									}while (w % 50000 != 0);
								break;
							
								default:
									trueValue = 1;
								break;
							}
						
						}while(trueValue == 1);	
							if(w > budget)
							{
								printf("So du trong tai khoan khong du de thuc hien giao dich, Chuc ban may man lan sau \n");
							}else 
								if(w <= budget)
								{
									system("cls");
									printf("\n\n\n\n\nRut Thanh Cong %ld$, So Du Moi La :%ld$\n",w,budget - w);
									budget =budget-w;
								}
					}
					break;
				
					case '3':
					{	do
							{
							printf("--------WELLCOME TO JP-BANK--------\n \t \tMENU\n================================\t \t \n_________________Doi Ma Pin______________\n Nhap Ma Pin Cu~:");
							fflush(stdin);
							scanf("%d",&newpin1);					
							if(default_Pin == newpin1)
							{	
								checkpin = 1;
								printf("Nhap Ma Pin Moi:");
								scanf("%d",&newpin1);
								printf("Nhap Ma Pin Moi Lan Nua:");
								scanf("%d",&newpin2);
								if(newpin1 == newpin2)
								{
									system("cls");
									printf("Doi pass thanh cong!!\n\n");
									default_Pin = newpin2;
								}else
									{
									system("cls");
									printf("\n2 ma pin ban nhap khong giong nhau\n");
									checkpin = 0;
									}
							}else 
								{
								printf("Sai mat khau cu vui long nhap lai:");
								(checkpin == 0);
								}
						}while(checkpin == 0);
					}
					break;	
				}
				printf("\nBan Co Muon Tiep Tuc Giao Dich (y-n): ");
				fflush(stdin);
				scanf("%c",&s);
				}while(s == 'y');
				system("cls");
			}
			else	
				printf("Ma the hoac Ma pin ban vua nhap khong chinh xac,Vui long thu lai !\n"); 
				slang = 1;
	break;
	
	default :
		slang = 1;
	break;
	
		}
	}while(slang = 1);
}
