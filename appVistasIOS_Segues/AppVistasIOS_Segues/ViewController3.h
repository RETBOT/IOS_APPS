//
//  ViewController3.h
//  AppVistasIOS_Segues
//
//  Created by Usuario invitado on 28/10/22.
//
//  By: RETBOT
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController3 : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UIImageView *imgsVehiculos;
- (IBAction)segmentControlValue:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblPrecio;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
