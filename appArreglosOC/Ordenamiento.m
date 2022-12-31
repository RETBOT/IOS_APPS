//
//  Ordenamiento.m
//  appArreglosOC
//
//  Created by Guest User on 15/09/22.
//

#import "Ordenamiento.h"

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
