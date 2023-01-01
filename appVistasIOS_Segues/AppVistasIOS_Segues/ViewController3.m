//
//  ViewController3.m
//  AppVistasIOS_Segues
//
//  Created by Usuario invitado on 28/10/22.
//
//  By: RETBOT
#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//  By: RETBOT
- (IBAction)segmentControlValue:(UISegmentedControl *)sender {
    switch (self.segmentControl.selectedSegmentIndex) {
        case 0:
            self.imgsVehiculos.image = [UIImage imageNamed:@"carro1"];
            _lblPrecio.text = @"Precio: $1,000,000.00";
            break;
        case 1:
            self.imgsVehiculos.image = [UIImage imageNamed:@"moto1"];
            _lblPrecio.text = @"Precio: $1,500,000.00";
            break;
        case 2:
            self.imgsVehiculos.image = [UIImage imageNamed:@"bici1"];
            _lblPrecio.text = @"Precio: $5,000,000.00";
            break;
        case 3:
            self.imgsVehiculos.image = [UIImage imageNamed:@"camioneta1"];
            _lblPrecio.text = @"Precio: $3,500,000.00";
            break;
        default:
            break;
    }
}
@end
//  By: RETBOT
