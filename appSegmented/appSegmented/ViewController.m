//
//  ViewController.m
//  appSegmented
//
//  Created by Usuario invitado on 17/10/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)segmentControlValue:(UISegmentedControl *)sender {
    switch (self.segmentControl.selectedSegmentIndex) {
        case 0:
            self.imgsVehiculos.image = [UIImage imageNamed:@"carro1"];
            break;
        case 1:
            self.imgsVehiculos.image = [UIImage imageNamed:@"moto1"];
            break;
        case 2:
            self.imgsVehiculos.image = [UIImage imageNamed:@"bici1"];
            break;
        case 3:
            self.imgsVehiculos.image = [UIImage imageNamed:@"camioneta1"];
            break;
        default:
            break;
    }
}
@end
