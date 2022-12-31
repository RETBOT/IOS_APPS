//
//  ViewController.h
//  appIOS_1
//
//  Created by Usuario invitado on 21/09/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *texto1;

- (IBAction)btnSaludar:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *label1;


- (IBAction)btnCantMayusculas:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *texto2;

- (IBAction)btnMayuscula:(UIButton *)sender;
- (IBAction)btnMostrarTeclado:(UITextField *)sender;

@end

