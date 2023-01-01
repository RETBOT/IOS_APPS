//
//  Matematicas.m
//  Matematicas
//
//  Created by Guest User on 02/09/22.
////  By: RETBOT

#import "Matematicas.h"
#import <math.h>

@implementation Matematicas
- (NSNumber *)multiplicaA:(NSNumber *)a conB:(NSNumber *)b
{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

- (void) multiplica:(NSNumber *)a conB:(NSNumber *)b resultado:(NSNumber *)resultado{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float producto = number1 * number2;
    resultado = [NSNumber numberWithFloat:producto];
}
- (void) multiplica2:(NSNumber *)a conB:(NSNumber *)b resultado:(float *)resultado{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    *resultado = number1 * number2;
}

- (NSInteger) facorial: (NSInteger)a{
    NSInteger fac = 1;
    
    for(NSInteger i = 1; i<= a; i++){
        fac = fac * i;
    }
    return fac;
    
}
//  By: RETBOT
- (NSInteger) facorialR: (NSInteger)a{
    Matematicas *mate = [[Matematicas alloc] init];
    if(a == 0){
        return 1;
    }else{
        return a * [mate facorialR:a-1];
    }
}//  By: RETBOT
- (Boolean) esPrimo: (NSInteger )num {
    if(num % 2 != 0){
        return true;
    }
    return false;
}

- (double) funTrigonometricas: (NSInteger )opc Numero:(double )num{
    double pi = 3.14159;
    if(opc == 1){
        return sin(pi*num/180);
    }else if(opc == 2){
        return cos(pi*num/180);
    }else if(opc == 3){
        return tan(pi*num/180);
    }
    return 0;
}

@end//  By: RETBOT
