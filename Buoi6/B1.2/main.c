#include<stdio.h>
#include<conio.h>
#include<string.h>
//#include<malloc.h>
   
int main ()
{
       char *p;
       char *add;
       
       printf("What's Hell ");
       p=(char*)malloc(50*sizeof(char));
       fgets(p,50,stdin);
       
       
       add=(char*)malloc(50*sizeof(char));
       strcpy(add,"Oh There are so many ");
       strcat(add,p);
       p=add;
       printf("\n%s",p);
 
       getch();
       return 0;
}
