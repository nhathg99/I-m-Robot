#include <stdio.h>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main ()
{
	 float x;
	 float f;
	 float i;
	 
	/* 1 cm = 0.032808399 (foot)   
	 		= 0.393700787 (inch)      */
	 		
	printf ("Nhap vao gia tri can quy doi: ");
	scanf  ("%f",&x);
	 
	f = 0.032808399 * x;
	i = 0.393700787 * x;
	
	printf ("%.f cm = ~%.2f foot \n    va =  ~%.2f inch ",x,f,i);	

}
