//
//  ViewController.h
//  appDiccionariosIOs_01
//
//  Created by Roberto Esquivel Troncoso on 02/10/22.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface ViewController : UIViewController

- (IBAction)btnIniciar:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblBandera;

@property (weak, nonatomic) IBOutlet UITextField *textOpcBandera;

@property (weak, nonatomic) IBOutlet UILabel *lblResultado;

- (IBAction)btnAyuda:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblAyuda;

- (IBAction)btnValidar:(UIButton *)sender;

@property (nonatomic, strong) NSDictionary *diccionarioPaises;

@property (nonatomic, strong) NSDictionary *diccionarioPaises2;

@property (nonatomic, strong) NSDictionary *diccionarioPaisesPista;


@end

