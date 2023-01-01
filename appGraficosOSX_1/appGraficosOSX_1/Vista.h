//
//  Vista.h
//  appGraficosOSX_1
//
//  Created by Usuario invitado on 17/10/22.
//
//  By: RETBOT
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vista : NSView
-(NSPoint) randomPoint;
-(void) Paraboloide;
-(void) dibujaCurbaBezier;
-(void) dibujaArcs;
-(void) dibujaRect:(NSRect)aRect;
-(void) dibujarGradientRadial;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
