//
//  ViewController.m
//  appIOs1
//
//  Created by Guest User on 26/09/22.
//
//  By: RETBOT
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
   [self.view addGestureRecognizer:tap];
    
}
// evento para ocultar el teclado
-(void) dismissKeyboard{
    [_texto1 resignFirstResponder];
}


- (IBAction)btnCantMAyusculas:(UIButton *)sender {
    
    NSString *cad = _texto1.text;
    NSInteger len = _texto1.text.length;
    //  By: RETBOT
    int i= 0, cont = 0;
    
    while(i < len){
        unichar letra = [cad characterAtIndex:i];
        if(letra >= 'A' && letra <= 'Z'){
            cont++;
        }
        i++;
    }
    _label1.text = [[NSString alloc] initWithFormat:@"%d",cont];
}

- (IBAction)btnAMayusculas:(UIButton *)sender {
    NSMutableString *cad = _texto1.text.mutableCopy;
    NSMutableString *cadAux = [self aMayusculas : cad];
    _label1.text = cadAux;
}

-(NSMutableString *) aMayusculas:(NSMutableString *) cadena{
    NSInteger indice = cadena.length;
    NSMutableString *string1;
    int i=0;
    while( i < indice){
        unichar letra = [cadena characterAtIndex:i];
        if(letra >= 'a' && letra <= 'z'){
             letra -= 32;
            //letra-= 'A' - 'a';
            string1 = [NSMutableString stringWithCharacters:&letra length:1];
            [cadena replaceCharactersInRange:NSMakeRange(i, 1) withString:string1];
        }
        i++;
    }
    return cadena;
}

NSString *saludo = @"Hola ";
- (IBAction)btnSaludar:(UIButton *)sender {
    // _label1.text = [saludo stringByAppendingString:_texto1.text];
    _label1.textColor = [UIColor colorWithRed:(25.0/255) green:(100.0/255) blue:(210/255.0) alpha:1];
    //  By: RETBOT
    NSString *saludo2 = [NSString stringWithFormat:@"Hola %@",_texto1.text];
    _label1.text = saludo2;
    
    //_label11.text = _texto1.text;
}

- (IBAction)btnMostrarTeclado:(UIButton *)sender {
    [self becomeFirstResponder];
}
@end
//  By: RETBOT
