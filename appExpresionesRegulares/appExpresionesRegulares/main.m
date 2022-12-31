//
//  main.m
//  appExpresionesRegulares
//
//  Created by Guest User on 06/10/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Hello, World!");
        /*
        NSString *cadPrueba = @"abcd ab ac bc BD TEcnologico TORREON";
        NSLog(@"Cadena %@",cadPrueba);
        
        NSError *error = nil;
        NSMutableString *cadenaPatron = [[NSMutableString alloc] init];
        NSMutableString *min = [[NSMutableString alloc] init];
        NSMutableString *minVocal = [[NSMutableString alloc] init];
        NSMutableString *may = [[NSMutableString alloc] init];
        NSMutableString *mayVocal = [[NSMutableString alloc] init];
        
        //[cadenaPatron appendString:@"\\b(a|b)(c|d)\\b"];
        //[cadenaPatron appendString:@"\\b(a|b)|(c|d)\\b"];
        //[cadenaPatron appendString:@"\\s"]; // ESPACIOS EN BLANCO
       //[cadenaPatron appendString:@"(a|b|T)(c|d|E)"];
        [min appendString:@"[a-z]"]; // minusculas
        [minVocal appendString:@"[aeiou]"]; // vocales
        [may appendString:@"[A-Z]\\w+"]; // minusculas
        [minVocal appendString:@"[AEIOU]"]; // vocales
        
        //[minVocal appendString:@"[^aeiou]"]; // no vocales
        
        //'\0' = nulo para finalizar cadenas
        // nil = null = inicianlizar los punteros en un  similar a 0
        
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:cadenaPatron options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSArray *matches = [regex matchesInString:cadPrueba options:0 range:NSMakeRange(0, cadPrueba.length)];
        
        for (NSTextCheckingResult *matchesResult in matches) {
            NSString *match = [cadPrueba substringWithRange:matchesResult.range];
            NSLog(@"Coincidencia %@",match);
        }
        
        NSRegularExpression *regex2 = [NSRegularExpression regularExpressionWithPattern:may options:0 error:&error];
        NSArray *matches2 = [regex2 matchesInString:cadPrueba options:0 range:NSMakeRange(0, cadPrueba.length)];
        
        for (NSTextCheckingResult *matchesResult in matches2) {
            NSString *match = [cadPrueba substringWithRange:matchesResult.range];
            NSLog(@"Coincidencia %@",match);
        }
        
        */
    }
    return 0;
}
