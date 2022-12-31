//
//  MatematicasInterface.m
//  appMatematicasCocoaOSX
//
//  Created by Guest User on 05/09/22.
//

#import "MatematicasInterface.h"

@implementation MatematicasInterface

- (IBAction)btnMulti:(NSButton *)sender {
    //int n1 = _texto1.intValue;
    NSNumber *n1 = [NSNumber numberWithInt:_texto1.intValue];
    NSNumber *n2 = [NSNumber numberWithInt:_texto2.intValue];
    
    Matematicas *mate = [[Matematicas alloc] init];
    NSNumber *result = [mate multiplicaA:n1 conB:n2];
    
    [_textoResultado setIntValue:result.intValue];
}

- (IBAction)btnSuma:(NSButton *)sender {
    //int n1 = _texto1.intValue;
    NSNumber *n1 = [NSNumber numberWithInt:_texto1.intValue];
    NSNumber *n2 = [NSNumber numberWithInt:_texto2.intValue];
    
    Matematicas *mate = [[Matematicas alloc] init];
    NSNumber *result;
    [mate suma:n1 conB:n2 resultado:result];
    
    [_textoResultado setIntValue:result.intValue];
}
@end
