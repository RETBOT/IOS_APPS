//
//  NumerosAleatorios.h
//  appNumerosAleatorios
//
//  Created by Guest User on 13/09/22.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumerosAleatorios : NSObject
{
    __weak IBOutlet NSTextField *label;
}

- (IBAction)btnIniciar:(NSButton *)sender;
- (IBAction)btnGenerar:(NSButton *)sender;
- (IBAction)btnSalir:(NSButton *)sender;

-(void) awakeFromNib;

@end

NS_ASSUME_NONNULL_END
