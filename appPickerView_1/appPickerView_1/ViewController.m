//
//  ViewController.m
//  appPickerView_1
//
//  Created by Guest RETBOT on 30/09/22.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *paises;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    paises = @[@"Australia", @"China", @"Francia", @"Inglaterra", @"Japon", @"Mexico"];

    _tipoDeCambio =[[NSArray alloc] initWithObjects:
                    [NSNumber numberWithFloat:0.9922],
                    [NSNumber numberWithFloat:6.5938],
                    [NSNumber numberWithFloat:0.7270],
                    [NSNumber numberWithFloat:0.6206],
                    [NSNumber numberWithFloat:81.57],
                    [NSNumber numberWithFloat:20.08],nil];
    self.pickerView1.dataSource = self;
    self.pickerView1.delegate = self;
    _lblResultado.text = paises[0];
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [paises count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return paises[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    float valorMoneda = [[_tipoDeCambio objectAtIndex:row] floatValue];
    float dolares = [_texto1.text floatValue];
    float resultado = dolares * valorMoneda;
    
    NSString *resultadoString = [[NSString alloc] initWithFormat: @"%.2f USD = %2f %@", dolares, resultado, [paises objectAtIndex: row]];
    
    _lblResultado.text = resultadoString;
}


- (IBAction)texto1:(UITextField *)sender {
}

@end
