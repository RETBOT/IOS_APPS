//
//  main.m
//  appArreglosOC
//
//  Created by Guest User on 14/09/22.
//

#import <Foundation/Foundation.h>
@interface Ordenamiento : NSObject

+(NSArray *) burbuja: (NSArray *) vector;
@end

@implementation Ordenamiento

+(NSArray *) burbuja: (NSArray *) vector
{
    int comp, interc;
    comp = interc = 0;
    NSMutableArray* vecAux = [[NSMutableArray alloc] initWithArray:vector];
    for(int i = 0; i < [vecAux count] - 1; i++)
    {
        for(int j =(int)[vecAux count]-1; j > i ; j--)
        {
            comp++;
            if([[vecAux objectAtIndex:(j-1)] intValue] > [[vecAux objectAtIndex:j] intValue])
            {
                int temp = [[vecAux objectAtIndex:(j-1)]intValue];
                [vecAux replaceObjectAtIndex:j-1 withObject:[vecAux objectAtIndex:j]];
                [vecAux replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:temp]];
                interc++;
            }
        }
    }
    NSLog(@"No. de Comparaciones = %d",comp);
    NSLog(@"No. de Intercambios = %d",interc);
    
    return  [vecAux mutableCopy];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*NSMutableArray *array;
            array = [[NSMutableArray alloc] init];
            int i;
            for (i = 0; i < 10; i++)
            {
                //NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
                // numeros aleatorios de 3 digitos
                NSNumber *newNumber = [[NSNumber alloc] initWithInt:(arc4random_uniform(900)+100)];
                // [array addObject:newNumber];
                array[i] = newNumber;
            }
            for ( i = 0; i < 10; i++) {
                NSNumber *numberToPrint = [array objectAtIndex:i];
                NSLog(@"The number at index %d is %@",  i, numberToPrint);
            }
         */
        
        NSArray *colores = [NSArray arrayWithObjects: @"Verde 💚 ", @"Blanco ⚪️", @"Rojo ❤️",@"🇲🇽", nil];
        
        for ( NSString *color in colores ) {
           // NSLog(@"Color : %@",color);
        }
        
        //colores[1] = @"RETBOT";
        //NSLog(@"Elementos 3 %@",colores[3]);
        //NSLog(@"Elementos 3 %@",[colores objectAtIndex:3]);
        NSString *nombres[3];
        nombres[0] = @"Panfilo";
        nombres[1] = @"Juan";
        nombres[2] = @"Isaias";
        
        //NSArray *arrayNombres = [NSArray arrayWithObjects:nombres count:3];
        //NSLog(@"%@",arrayNombres);
        
        
        int aleatorio = 500;//arc4random()%6 + 5;
        NSMutableArray *arregloM1 = [NSMutableArray arrayWithCapacity:aleatorio];
        
        for (int i=0; i<aleatorio; i++) {
        //for (int i=0; i<arregloM1.count; i++) {
        //for (int i=0; i< [arregloM1 count]; i++) {
            NSNumber *numero = [[NSNumber alloc] initWithInt:arc4random_uniform(900)+100];
            [arregloM1 addObject:numero];
        }
        
        //for (int i=0; i<arregloM1.count; i++) {
            //NSLog(@"Numero [%d] = %@",(i+1),arregloM1[i]);
            //printf("Numero [%d] = %d \n",(i+1), [arregloM1[i] intValue]);
        //}
        
        //NSLog(@"%@",arregloM1);
        //NSLog(@"Numero de elementos : %lu",arregloM1.count);
        
        //NSNumber *n1 = [[NSNumber alloc] initWithInt:100];
        //[arregloM1 addObject:n1];
        
        //NSLog(@"%@",arregloM1);
        //NSNumber *n2 = [[NSNumber alloc] initWithInt:100];
        //[arregloM1 insertObject:n2 atIndex:2];
        
        //NSArray *invertirArregloM1 = [[arregloM1 reverseObjectEnumerator] allObjects];
        //NSLog(@"Arreglo en orden inverso %@", invertirArregloM1);
        
        NSArray *ord = [Ordenamiento burbuja:arregloM1];
        NSLog(@"Arreglo en orden Burbuja %@", ord);
        
       }
    
    return 0;
}
