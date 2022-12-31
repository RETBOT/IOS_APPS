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

@end

