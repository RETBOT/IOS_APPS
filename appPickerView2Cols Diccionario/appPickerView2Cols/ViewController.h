//
//  ViewController.h
//  appPickerView2Cols
//
//  Created by Roberto Esquivel Troncoso on 03/10/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *lbl1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;

@property (nonatomic, strong) NSDictionary *diccionarioPaises;
@property (nonatomic, strong) NSDictionary *diccionarioPaisesPista;
@property (nonatomic, strong) NSDictionary *diccionarioPaisesImagenes;

- (IBAction)btnIniciar:(UIButton *)sender;

- (IBAction)btnVerificar:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *lblResultado;
@property (weak, nonatomic) IBOutlet UILabel *lblVidas;

@end

