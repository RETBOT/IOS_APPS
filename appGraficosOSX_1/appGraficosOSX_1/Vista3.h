//
//  Vista3.h
//  appGraficosOSX_1
//
//  Created by Usuario invitado on 26/10/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vista3 : NSView
-(NSPoint) randomPoint;
-(void) Paraboloide;
-(void) dibujaCurbaBezier;
-(void) dibujaArcs;
-(void) dibujaRect:(NSRect)aRect;
-(void) dibujarGradientRadial;
@end

NS_ASSUME_NONNULL_END
