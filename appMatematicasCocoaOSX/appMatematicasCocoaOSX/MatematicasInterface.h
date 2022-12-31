//
//  MatematicasInterface.h
//  appMatematicasCocoaOSX
//
//  Created by Guest User on 05/09/22.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Matematicas.h"

NS_ASSUME_NONNULL_BEGIN

@interface MatematicasInterface : NSObject

- (IBAction)btnSuma:(NSButton *)sender;

- (IBAction)btnMulti:(NSButton *)sender;

@property (weak) IBOutlet NSTextField *textoResultado;

@property (weak) IBOutlet NSTextField *texto2;

@property (weak) IBOutlet NSTextField *texto1;

@end

NS_ASSUME_NONNULL_END
