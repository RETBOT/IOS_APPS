//
//  ViewController.m
//  appExpresionesRegularesIOs_1
//
//  Created by Roberto Esquivel Troncoso on 09/10/22.
////  By: RETBOT

#import "ViewController.h"

@interface ViewController ()
{
    NSInteger opc;
    NSArray *regex1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    regex1 = @[@"Correo 1",@"Correo 2"];
    
    _pvRegex.dataSource = self;
    _pvRegex.delegate = self;
    opc = 0;
    _lblOpcion.text = @"(Numeros y Letras).(Numeros y Letras)@(Numeros y Letras).(Numeros y Letras).( 2 o mas Letras) \n Ejemplo: alu.19150519@correo.itlalaguna.edu";
    
    UIColor *color = [UIColor colorWithRed: (175./255) green:(200./255) blue:(100./255) alpha:1.0];
    
    self.view.backgroundColor = color;
    
     //  By: RETBOT
    }

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return regex1.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [regex1 objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _lblOpcion.text = [NSString stringWithFormat:@"Opción: %@", [regex1 objectAtIndex:row]];
    opc = row;
    
    switch (opc) {
        case 0:
            
            _lblOpcion.text = @"(Numeros y Letras).(Numeros y Letras)@(Numeros y Letras).(Numeros y Letras).( 2 o mas Letras) \n Ejemplo: alu.19150519@correo.itlalaguna.edu";
            break;
        case 1:
            _lblOpcion.text = @"(Combinacion de numeros, letras, . , -, _)@(Numeros y Letras).(2 y 4 Letras) \n Ejemplo: roberto_es@correo.com";
            break;
    }
}
//  By: RETBOT
- (IBAction)btnValidar:(UIButton *)sender {
    NSString *expresion;
    NSString *mail = _txtCorreoElectronico.text;
    switch (opc) {
        case 0:
            expresion = @"^[\\w-]+(\\.[\\w-]+)@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)(\\.[A-Z-a-z]{2,})$";
            // inicia con caracteres seguido de un punto
        // despues mas caracteres mas un @
        // continua con alguna palabra esta puede contener, minusculas, mayusculas y numeros seguido de un punto y repitiendo lo mismo que la palabra anterior
        // despues un punto y seguido de 2 o mas caracteres minusculas o mayusculas
                                
            break;
        case 1:
            expresion = @"^[_A-Z0-9a-z.-_]+@[A-Za-z0-9]+\\.[A-Z-a-z]{2,4}$";
            // inicia palabra que contenga letras mayusculas o minusculas, numeros , ".", "_"
            // despues va un @
            // continua con una plabra con minuscula o minusculas y numeros
            // separandolo con un punto
            // la siguiente es una palabra con letras minusculas o mayusculas, de 2 a 4 palabras
            break;
    }
    
    NSError *error = nil;
    NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:expresion options:0 error:&error];
    
    NSTextCheckingResult *match = [ regex1 firstMatchInString:mail options:0 range:NSMakeRange(0, [mail length])];
    
    if(match)
        _lblResultado.text = @"Mail valido";
    else
        _lblResultado.text = @"Mail no valido";
}
@end
//  By: RETBOT
