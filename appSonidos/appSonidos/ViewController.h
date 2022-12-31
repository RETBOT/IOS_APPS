//
//  ViewController.h
//  appSonidos
//
//  Created by Usuario invitado on 10/10/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pvCanciones;


@end

