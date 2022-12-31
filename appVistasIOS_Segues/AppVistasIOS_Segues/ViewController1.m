//
//  ViewController1.m
//  AppVistasIOS_Segues
//
//  Created by Usuario invitado on 28/10/22.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
// Get the new view controller using [segue destinationViewController].
// Pass the selected object to the new view controller.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"irVista2"]){
        ViewController2 *vista2Aux = [segue destinationViewController];
        vista2Aux.nombre = _texto1Vista1.text;
        vista2Aux.apellido = _texto2Vista1.text;
        
    }
}


- (IBAction)btnAcercaDe:(id)sender {
    //OPCION UIAlertController
         UIAlertController * alert=   [UIAlertController
         alertControllerWithTitle:@"Info"
         message:[NSString stringWithFormat:@"Usuario: %@",_texto1Vista1.text]//@"Usando UIAlertController"
         preferredStyle:UIAlertControllerStyleAlert];
         UIAlertAction* ok = [UIAlertAction
         actionWithTitle:@"OK"
         style:UIAlertActionStyleDefault
         handler:^(UIAlertAction * action)
         {
         [alert dismissViewControllerAnimated:YES completion:nil];
         }];
         UIAlertAction* cancel = [UIAlertAction
         actionWithTitle:@"Cancel"
         style:UIAlertActionStyleDefault
         handler:^(UIAlertAction * action)
         {
         [alert dismissViewControllerAnimated:YES completion:nil];
         }];
         [alert addAction:ok];
         [alert addAction:cancel];
         [self presentViewController:alert animated:YES completion:nil];
}
@end
