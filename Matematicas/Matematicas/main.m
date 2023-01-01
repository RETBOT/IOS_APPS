// \
//  main.m
//  Matematicas
//  19130519
//  Created by Roberto Esquivel Troncoso on 02/09/22.//  By: RETBOT
//

#import <Foundation/Foundation.h>
#import "Matematicas.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Matematicas *mate = [[Matematicas alloc] init];
        // Capturar los valores desde el teclado
        // Primero con C (printf, scanf)
        // segundo con C++ (cout, cin)
        
        
        int opc = 0;
        
        printf("Menu\n");
        printf("1. Multiplica 2 numeros\n");
        printf("2. Multipica 2 numeros puntero\n");
        printf("3. Factorial\n");
        printf("4. Factorial Recursivo\n");
        printf("5. Es primo\n");
        printf("6. Funciones trigonometricas\n");
        printf("Ingresa la opcion: ");
        scanf("%d",&opc);
//  By: RETBOT
        if(opc == 1){
            float na, nb;
            
            printf("Ingresa el valor de a:");
            NSNumber *a = [NSNumber numberWithFloat:scanf("%f",&na)];
            
            printf("Ingresa el valor de b:");
            NSNumber *b = [NSNumber numberWithFloat:scanf("%f",&nb)];
            
            NSNumber *result = [mate multiplicaA:a conB:b];
            NSString *resultString = [result stringValue];
            NSLog(@"The product is %@",resultString);
            
        }else if(opc == 2){
            float na, nb;
            
            printf("Ingresa el valor de a:");
            NSNumber *a = [NSNumber numberWithFloat:scanf("%f",&na)];
            
            printf("Ingresa el valor de b:");
            NSNumber *b = [NSNumber numberWithFloat:scanf("%f",&nb)];
        
            float resultadoF = 0;
            [mate multiplica2:a conB:b resultado: &resultadoF];
            printf("Resultado utilizando puntero NSNumber : %f \n",resultadoF);
        }else if(opc == 3){
            int numero = 0;
            
            // factorial
            printf("Ingresa un numero: ");
            scanf("%d",&numero);
            
            printf("Factorial : %ld \n", (long)[mate facorial:numero]);
        }else if(opc == 4){
            int numero = 0;
            
            // factorial
            printf("Ingresa un numero: ");
            scanf("%d",&numero);
            
            printf("Factorial Recursivo : %ld \n", (long)[mate facorialR:numero]);
        }else if(opc == 5){
            int numero = 0;
            
            // factorial
            printf("Ingresa un numero: ");
            scanf("%d",&numero);
            
            Boolean primo = [mate esPrimo:numero];
            
            if(primo){
                printf("Es primo \n");
            }else{
                printf("No es primo \n");
            }
            
        }else if(opc == 6){
            int opc2 = 0;
            
            printf("Menu\n");
            printf("1. Seno \n");
            printf("2. Coseno \n");
            printf("3. Tangente\n");
            printf("Ingresa la opcion: ");
            scanf("%d",&opc2);
            
            double num;
            printf("Ingresa el valor :");
            scanf("%lf",&num);
            
            double resultado = [mate funTrigonometricas:opc2 Numero:num];
            
            printf("Resultado = %lf\n",resultado);
            
        }else{
            printf("Opcion no valida\n");
        }
        
        
        //  By: RETBOT
        
    }
    return 0;
}
