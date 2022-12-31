//
//  ViewController.m
//  appDiccionarioIOs_02
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
    
    self.PickerView1.dataSource = self;
    self.PickerView1.delegate = self;
    _lblResultado.text = _diccionarioPaises[@"mexico"];
}
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [_diccionarioPaises count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString *row2 = [NSString stringWithFormat:@"%ld", (long)row];
    return _diccionarioPaises2[row2];
}

- (IBAction)btnIniciar:(UIButton *)sender {
    int r = arc4random_uniform((int)_diccionarioPaises.count)+1;
    NSString *cadena = [NSString stringWithFormat:@"%d", r];
    bandera = [_diccionarioPaises2 objectForKey:cadena];
    _lblBanderas.text = [_diccionarioPaises objectForKey:bandera];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    BOOL band = true;
    NSString *row2 = [NSString stringWithFormat:@"%ld", (long)row];
    
    NSString *pais = [_diccionarioPaises2 objectForKey:row2];

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
- (IBAction)btnAyuda:(UIButton *)sender {
    _lblAyuda.text = [_diccionarioPaisesPista objectForKey:bandera];
}
@end
