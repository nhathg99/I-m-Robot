//
//  main.c
//  b2.2
//
//  Created by Nhật on 06/04/2021.
//

#include <stdio.h>
int main(){
    char character;
    
    printf("nhap ky tu:\n");
    scanf("%s",&character);
    
    switch (character){
        case 'A':
        case'a':
            printf("Ada\n");
            break;
        case 'B' :
        case 'b':
            printf("Basic\n");
            break;
        case 'C' :
        case 'c':
            printf("COBOL\n");
            break;
        case 'D' :
        case 'd':
            printf("dBase\n");
            break;
        case 'F' :
        case 'f':
            printf("Fortran\n");
            break;
        case 'P' :
        case 'p':
            printf("Pacal\n");
            break;
        case 'V' :
        case 'v':
            printf("Visual C++\n");
            break;
        default:
            printf("ky tu khong hop le\n");
            return (0);
    }
    
    
}
