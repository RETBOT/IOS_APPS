//
//  ViewController.h
//  appDiccionarioIOs_02
//
//  Created by Roberto Esquivel Troncoso on 02/10/22.
//
//  By: RETBOT
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

- (IBAction)btnIniciar:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblBanderas;
@property (weak, nonatomic) IBOutlet UIPickerView *PickerView1;
@property (weak, nonatomic) IBOutlet UILabel *lblResultado;
- (IBAction)btnAyuda:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblAyuda;

@property (nonatomic, strong) NSDictionary *diccionarioPaises;
@property (nonatomic, strong) NSDictionary *diccionarioPaises2;
@property (nonatomic, strong) NSDictionary *diccionarioPaisesPista;


@end

//  By: RETBOT
