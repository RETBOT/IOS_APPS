//
//  ViewController.h
//  appPickerView_1
//
//  Created by Guest RETBOT on 30/09/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *texto1;

@property (weak, nonatomic) IBOutlet UILabel *lblResultado;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;

@property (strong, nonatomic) NSArray *tipoDeCambio;

@end

