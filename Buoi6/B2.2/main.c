#include <stdio.h>
#include <stdlib.h>
void main()
{
	int *mt1,*mt2,*tong;
	int i,j,dong,cot;
	mt1=(int*)malloc(dong*cot*sizeof(int));
	mt2=(int*)malloc(dong*cot*sizeof(int));
	tong=(int*)malloc(dong*cot*sizeof(int));

	printf("Nhap so dong :");
	scanf("%d",&dong);
	printf("Nhap so cot :");
	scanf("%d",&cot);
	for(i=0;i<dong;i++){
		for(j=0;j<cot;j++)
		{
			printf("Nhap vao ma tran 1 gia tri  [%d] [%d]",i,j);
			scanf("%d",(mt1+i*dong+j));
			printf("\n");
			
		}
	}
	printf("\n");printf("\n");
		for(i=0;i<dong;i++){
			for(j=0;j<cot;j++)
		{
	printf("Nhap vao ma tran 2 gia tri [%d] [%d]",i,j);
			scanf("%d",(mt2+i*dong+j));
			printf("\n");
		}
	}
	  for(i = 0; i < dong; i++){
        for(j = 0; j < cot; j++){
           *(tong+i*dong+j) = *(mt1+i*dong+j) + *(mt2+i*dong+j);
            
        }
    }
    
    for(i = 0; i < dong; i++){
        for(j = 0; j < cot; j++){
           printf("%d\t",*(tong +i*dong + j));
            
        }
        printf("\n");
    }
    getch();
}

