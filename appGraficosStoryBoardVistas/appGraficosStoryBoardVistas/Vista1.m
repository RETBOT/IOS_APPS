//
//  Vista1.m
//  appGraficosStoryBoardVistas
//
//  Created by Usuario invitado on 27/10/22.
//

#import "Vista1.h"

@implementation Vista1
-(NSPoint) randomPoint{
    NSPoint result;
    NSRect r = [self bounds];
    
    result.x = r.origin.x + random() % (int)r.size.width;
    result.y = r.origin.y + random() % (int)r.size.height;
    
    return result;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    NSRect rectangulo = NSMakeRect(0, 0, 200, 200);
    [[NSColor blueColor] set];
    
    [NSBezierPath fillRect:rectangulo];
    //Dibujar un arco
    NSBezierPath *path = [NSBezierPath bezierPath];
    [[NSColor whiteColor] set];
    
    [path setLineWidth:3.0];
    [path moveToPoint:NSMakePoint(0, 0)];
    [path appendBezierPathWithArcWithCenter:NSMakePoint(0, 0) radius:150 startAngle:0 endAngle:120 * 3.6];
    
    [path closePath];
    [[NSColor redColor] setFill];
    [path fill];
    [path stroke];
}

@end
