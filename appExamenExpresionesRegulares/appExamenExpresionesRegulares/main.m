//
//  main.m
//  appExamenExpresionesRegulares
//
//  Created by Roberto Esquivel Troncoso on 07/10/22.
////  By: RETBOT

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *mail = @"alu.19130519@itlalaguna.edu.mx";
        // 
        NSString *mail2 = @"roberto_es@roberto.rob";
        
                
        NSString *expresion1 = @"^[\\w-]+(\\.[\\w-]+)@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)(\\.[A-Z-a-z]{2,})$";
            // inicia con caracteres seguido de un punto
        // despues mas caracteres mas un @
        // continua con alguna palabra esta puede contener, minusculas, mayusculas y numeros seguido de un punto y repitiendo lo mismo que la palabra anterior
        // despues un punto y seguido de 2 o mas caracteres minusculas o mayusculas
                                
        NSString *expresion2 = @"^[_A-Z0-9a-z.-_]+@[A-Za-z0-9]+\\.[A-Z-a-z]{2,4}$";
        // inicia palabra que contenga letras mayusculas o minusculas, numeros , ".", "_"
        // despues va un @
        // continua con una plabra con minuscula o minusculas y numeros
        // separandolo con un punto
        // la siguiente es una palabra con letras minusculas o mayusculas, de 2 a 4 palabras
        
        NSError *error = nil;
        NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:expresion1 options:0 error:&error];
        
        NSTextCheckingResult *match = [ regex1 firstMatchInString:mail options:0 range:NSMakeRange(0, [mail length])];
        
        NSError *error2 = nil;
        NSRegularExpression *regex2 = [NSRegularExpression regularExpressionWithPattern:expresion2 options:NSRegularExpressionCaseInsensitive error:&error2];
        
        NSTextCheckingResult *match2 = [ regex2 firstMatchInString:mail2 options:0 range:NSMakeRange(0, [mail2 length])];
        
        
        if(match)
            NSLog(@"Mail 1 valido");
        else
            NSLog(@"Mail 1 no valido");
        
        if(match2)
            NSLog(@"Mail 2 valido");
        else
            NSLog(@"Mail 2 no valido");
        
    }
    return 0;
}//  By: RETBOT
