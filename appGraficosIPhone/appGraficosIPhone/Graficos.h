//
//  Graficos.h
//  appGraficosIPhone
//
//  Created by Usuario invitado on 01/11/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Graficos : UIView {
    NSInteger x1,x2,x3,y1,y2,y3;
    NSInteger xControl, yControl, x2Control, y2Control;
    NSInteger estado;
}
@property (weak, nonatomic) IBOutlet UITextField *txtX1;
@property (weak, nonatomic) IBOutlet UITextField *txtY1;
@property (weak, nonatomic) IBOutlet UITextField *txtX2;
@property (weak, nonatomic) IBOutlet UITextField *txtY2;
@property (weak, nonatomic) IBOutlet UITextField *txtX3;
@property (weak, nonatomic) IBOutlet UITextField *txtY3;
@property (weak, nonatomic) IBOutlet UITextField *txtXControl;
@property (weak, nonatomic) IBOutlet UITextField *txtYControl;
@property (weak, nonatomic) IBOutlet UITextField *txtX2Control;
@property (weak, nonatomic) IBOutlet UITextField *txtY2Control;

- (IBAction)btnDibujo:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)segmentControlValue:(UISegmentedControl *)sender;

@end
NS_ASSUME_NONNULL_END
