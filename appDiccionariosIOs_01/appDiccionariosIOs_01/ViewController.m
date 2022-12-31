//
//  ViewController.m
//  appDiccionariosIOs_01
//
//  Created by Roberto Esquivel Troncoso on 02/10/22.
//

#import "ViewController.h"

@interface ViewController (){
    NSString *bandera;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _diccionarioPaises = [NSDictionary dictionaryWithObjectsAndKeys: @"🇲🇽", @"mexico", @"🇨🇦", @"canada", @"🇺🇸", @"estados unidos", @"🇦🇷", @"argentina", @"🇻🇪", @"venezuela", nil];
    _diccionarioPaises2 = [NSDictionary dictionaryWithObjectsAndKeys: @"mexico", @"1", @"canada",@"2", @"estados unidos",@"3", @"argentina",@"4", @"venezuela",@"5", nil];
    
    _diccionarioPaisesPista = [NSDictionary dictionaryWithObjectsAndKeys: @"MEX", @"mexico", @"CA", @"canada", @"EE. UU", @"estados_unidos", @"ARG", @"argentina",@"VE", @"venezuela", nil];
}


- (IBAction)btnIniciar:(UIButton *)sender {
    
    int r = arc4random_uniform((int)_diccionarioPaises.count)+1;
    NSString *cadena = [NSString stringWithFormat:@"%d", r];
    bandera = [_diccionarioPaises2 objectForKey:cadena];
    
    _lblBandera.text = [_diccionarioPaises objectForKey:bandera];
}

- (IBAction)btnAyuda:(UIButton *)sender {
    _lblAyuda.text = [_diccionarioPaisesPista objectForKey:bandera];
}

- (IBAction)btnValidar:(UIButton *)sender {
    BOOL band = true;
    NSString *pais = _textOpcBandera.text;
    pais = [pais lowercaseString];
        for(NSString *cad in _diccionarioPaises.allKeys){
            if([pais isEqual:cad]){
                _lblResultado.text = @"Resultado : Correctoooooooo 👌";
                band = false;
                break;
            }
        }
    if(band){
        _lblResultado.text = @"Resultado : Incorrectoooooooo 👎";
    }
}
@end
