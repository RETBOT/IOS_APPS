//
//  ViewController2.h
//  AppVistasIOS_Segues
//
//  Created by Usuario invitado on 28/10/22.
//
//  By: RETBOT
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController2 : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *texto1Vista2;
@property (weak, nonatomic) IBOutlet UITextField *texto2Vista2;

//Para acceder a los siguientes atributos
// desde la vista 1

@property (strong, nonatomic) NSString *nombre;
@property (strong, nonatomic) NSString *apellido;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
