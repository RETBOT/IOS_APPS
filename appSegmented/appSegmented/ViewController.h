//
//  ViewController.h
//  appSegmented
//
//  Created by Usuario invitado on 17/10/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UIImageView *imgsVehiculos;
- (IBAction)segmentControlValue:(UISegmentedControl *)sender;

@end

