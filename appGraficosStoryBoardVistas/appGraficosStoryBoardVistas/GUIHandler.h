//
//  GUIHandler.h
//  appGraficosStoryBoardVistas
//
//  Created by Usuario invitado on 27/10/22.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "Vista1.h"

NS_ASSUME_NONNULL_BEGIN

@interface GUIHandler : NSObject
{
    Vista1 *vista1;
    __weak IBOutlet ViewController *viewController;
    __weak IBOutlet NSButton *btnDibujar;
    __weak IBOutlet NSButton *btnBorrar;
}

- (IBAction)btnDibujar:(NSButton *)sender;
- (IBAction)btnBorrar:(NSButton *)sender;


@end

NS_ASSUME_NONNULL_END
