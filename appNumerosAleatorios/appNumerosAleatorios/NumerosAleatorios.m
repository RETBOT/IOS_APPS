//
//  NumerosAleatorios.m
//  appNumerosAleatorios
//
//  Created by Guest User on 13/09/22.
//

#import "NumerosAleatorios.h"

@implementation NumerosAleatorios

- (IBAction)btnSalir:(NSButton *)sender {
    [NSApp terminate:self];
}

- (IBAction)btnGenerar:(NSButton *)sender {
   // int num = random() % 100;
    int num = arc4random_uniform(9000)+1000;
    NSLog(@"Numero Aleatorio : %d",num);
    [label setIntValue:num];
}

- (IBAction)btnIniciar:(NSButton *)sender {
    srand( (unsigned int) (time(NULL)) );
    [label setStringValue:@"Generador de nums aleatorios iniciado"];
    
}

-(void) awakeFromNib{
    [label setBackgroundColor: NSColor.brownColor];
    NSDate *fecha = [NSDate date];
    [label setTextColor:NSColor.greenColor];
    [label setObjectValue:fecha];
}
@end
