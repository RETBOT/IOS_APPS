//
//  ViewController.m
//  appIOS_1
//
//  Created by ROBERTO ESQUIVELTRONCOSO on 21/09/22.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

NSString *saludo = @"Hola ";
- (IBAction)btnSaludar:(UIButton *)sender {
    // _label1.text = [saludo stringByAppendingString:_texto1.text];
    _label1.textColor = [UIColor colorWithRed:(25.0/255) green:(100.0/255) blue:(210/255.0) alpha:1];
    
    NSString *saludo2 = [NSString stringWithFormat:@"Hola %@",_texto1.text];
    _label1.text = saludo2;
    
    //_label11.text = _texto1.text;
}

- (IBAction)btnCantMayusculas:(UIButton *)sender {
    NSString *cad = _texto1.text;
    NSInteger len = _texto1.text.length;
    
    int i= 0, cont = 0;
    
    while(i < len){
        unichar letra = [cad characterAtIndex:i];
        if(letra >= 'A' && letra <= 'Z'){
            cont++;
        }
        i++;
    }
    _texto2.text = [[NSString alloc] initWithFormat:@"%d",cont];
    
}


// implementar un metodo para determinar letras mayusuclas
// llamar el metodo desde el moton A Mayusculas
// prototipo para su juego que enseña a leer
// Ejemplo: conocer letras
//          conocer silabas
// Todo lo que su creatividad les de
// Sera parte de la calificacion

- (IBAction)btnMostrarTeclado:(UITextField *)sender {
    [self becomeFirstResponder];
}

- (IBAction)btnMayuscula:(UIButton *)sender {
    NSString *cad = _texto1.text;
    NSInteger len = _texto1.text.length;
    NSString *newCad = [[NSString alloc] init];

    int i= 0;
    
    while(i < len){
        unichar letra = [cad characterAtIndex:i];
        if(letra >= 'a' && letra <= 'z'){
            letra += 32;
        }
        newCad =[newCad stringByAppendingFormat:@"%c",letra];
        i++;
    }
    
    _texto2.text = newCad;
}
@end
