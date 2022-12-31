//
//  ViewController.h
//  appIOs1
//
//  Created by Guest User on 26/09/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *texto1;
@property (weak, nonatomic) IBOutlet UILabel *label1;

- (IBAction)btnMostrarTeclado:(UIButton *)sender;
- (IBAction)btnSaludar:(UIButton *)sender;
- (IBAction)btnAMayusculas:(UIButton *)sender;
- (IBAction)btnCantMAyusculas:(UIButton *)sender;

@end

