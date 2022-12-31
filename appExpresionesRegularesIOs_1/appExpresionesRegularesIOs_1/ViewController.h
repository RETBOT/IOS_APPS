//
//  ViewController.h
//  appExpresionesRegularesIOs_1
//
//  Created by Roberto Esquivel Troncoso on 09/10/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *txtCorreoElectronico;

@property (weak, nonatomic) IBOutlet UIPickerView *pvRegex;

@property (weak, nonatomic) IBOutlet UILabel *lblOpcion;

- (IBAction)btnValidar:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblResultado;

@end

