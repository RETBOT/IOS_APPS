//
//  Vista2.m
//  appGraficosOSX_1
//
//  Created by Usuario invitado on 26/10/22.
//
//  By: RETBOT
#import "Vista2.h"

@implementation Vista2

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
    NSRect rectangulo = [self bounds];
    
    // Asingar color al fondo
    //[[NSColor blueColor] set];
    //[[NSColor colorWithDeviceRed:0.1f green:0.785f blue:0.785f alpha:1.0f] set];
    NSColor *color = [NSColor colorWithCalibratedRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0)alpha:1.0];
    [color set];
    //
    [NSBezierPath fillRect:rectangulo];
    NSPoint punto1;
    NSRect r = [self bounds];
    //[[NSColor whiteColor] set];
    
    
    NSBezierPath *path = [[NSBezierPath alloc] init];
    [path setLineWidth:3.0];
    
    srand((unsigned) time(NULL));
    /*NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];


    NSColor *color = [NSColor colorWithSRGBRed:(220/255.0) green:(230/255.0) blue:(150/255.0) alpha:1];
     */

    /*
    NSPoint punto = [self randomPoint];
    [path moveToPoint:punto];
    
    for (int i=0; i<2; i++) {
        punto = [self randomPoint];
        [path lineToPoint:punto];
    }
    
    [path stroke];
    //[path fill];
     
   
    NSPoint punto1;
    NSRect r = [self bounds];
    punto1.x = r.origin.x;
    punto1.y = r.origin.y;
    [path moveToPoint:punto1];
    //  By: RETBOT
    punto1.x = r.origin.x + r.size.width;
    punto1.y = r.origin.y + r.size.width / 2.5;
    [path lineToPoint:punto1];
    
    punto1.x = r.origin.x;
    punto1.y = r.origin.y + r.size.width / 2.5;
    [path lineToPoint:punto1];
    
    punto1.x = r.origin.x + r.size.width;
    punto1.y = r.origin.y;
    [path lineToPoint:punto1];
    
    punto1.x = r.origin.x + r.size.width / 2;
    punto1.y = r.origin.y + r.size.height;
    [path lineToPoint:punto1];
    
    punto1.x = r.origin.x;
    punto1.y = r.origin.y;
    [path lineToPoint:punto1];
    */

    //[self Paraboloide];
  //  [self dibujaCurbaBezier];
    [self dibujaArcs];
    //[self dibujaRect:rectangulo];
    //[self dibujarGradientRadial];
}

-(void) Paraboloide{
    NSRect r = [self bounds];
    NSPoint punto1;
    NSPoint punto2;
    
    int x=0,midx,midy;
    float y=0;
    
    midx = r.size.width/2;
    midy = r.size.height/2;
    
    NSBezierPath *path = [[NSBezierPath alloc] init];
    [path setLineWidth:1.0];
    
    srand((unsigned) time(NULL));
    NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    
    [color set];
    
    for(x = midx-250; x <= midx; x+=10)
       {
          y = midy - (x-70) * 0.4;
           punto1.x = midx;
           punto1.y = y;
           
           punto2.x = x;
           punto2.y = midy;
           
           [path moveToPoint:punto1];
           [path lineToPoint:punto2];
       }
    for(x = midx; x <= 570; x+=10)
      {
         y = midy -100 + (x-midx) * 0.4;
          
          punto1.x = midx;
          punto1.y = y;
          
          punto2.x = x;
          punto2.y = midy;
          //  By: RETBOT
          [path moveToPoint:punto1];
          [path lineToPoint:punto2];
      }
      for(x = midx+250; x >= midx; x-=10)
      {
         y = midy+100 - (x-midx) * 0.4;
          
          punto1.x = midx;
          punto1.y = y;
          
          punto2.x = x;
          punto2.y = midy;
          
          [path moveToPoint:punto1];
          [path lineToPoint:punto2];
      }
      for(x = midx; x >= 70; x-=10)
      {
         y = midy + 100 - (midx-x) * 0.4;
          
          punto1.x = midx;
          punto1.y = y;
          
          punto2.x = x;
          punto2.y = midy;
          
          [path moveToPoint:punto1];
          [path lineToPoint:punto2];
      }
    
    [path stroke];
}
-(void) dibujaCurbaBezier{
    NSRect r = [self bounds];
    NSPoint p1 = NSMakePoint(r.size.width/4, r.size.height/4);//(100, 100);
    NSPoint p2 = NSMakePoint(r.size.width/3, r.size.height/2);//(200, 300);
    NSPoint p3 = NSMakePoint(r.size.width/2, r.size.height/4);//(300, 100);

    // Control points
    NSPoint c1 = NSMakePoint(r.size.width/3, r.size.height/3);//(200, 200);
    NSPoint c2 = NSMakePoint(r.size.width/3, r.origin.y);//(200, 0);

    srand((unsigned) time(NULL));
    NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    
    [color set];
    // Constructing the path for the triangle
    NSBezierPath *bp = [NSBezierPath bezierPath];
    [bp setLineWidth:3.0];
    
    [bp moveToPoint:p1];
    [bp lineToPoint:p2];
    [bp lineToPoint:p3];
    [bp curveToPoint:p1 controlPoint1:c1 controlPoint2:c2];
    [bp closePath];
    [bp stroke];
}
-(void) dibujaArcs{
    NSRect r = [self bounds];
    NSPoint p0 = NSMakePoint(r.size.width/1.5, r.size.height/4);//( 400, 100 );
    NSPoint p1 = NSMakePoint(r.size.width/1.5, r.size.height/3);//( 400, 250 );
    NSPoint p2 = NSMakePoint(r.size.width/0.5, r.size.height/3);//( 500, 250 );
//  By: RETBOT
    srand((unsigned) time(NULL));
    NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    
    [color set];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:3.0];
    [path moveToPoint:p0];
    [path appendBezierPathWithArcFromPoint:p1 toPoint:p2 radius:50];
    [path stroke];
}
-(void) dibujaRect:(NSRect)aRect{
    NSRect r = [self bounds];
    srand((unsigned) time(NULL));
    NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    
    [color set];
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:3.0];
        [path moveToPoint:NSMakePoint(0, r.size.height/2)];//(0, 200)];
        [path curveToPoint:NSMakePoint(r.size.height/1.5, r.size.height/4)//(500, 200)
              controlPoint1:NSMakePoint(r.size.height/1.5, r.size.height/1.3)//(500, 800)
              controlPoint2:NSMakePoint(0, -r.size.height/1.5)];//(0, -400)];

        [path setFlatness:100];
        [path stroke];
}
//  By: RETBOT
-(void) dibujarGradientRadial{
    NSRect bounds = [self bounds];
    NSColor *color = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    NSColor *color2 = [NSColor colorWithSRGBRed:(random() % 255/255.0) green:(random() % 255/255.0) blue:(random() % 255/255.0) alpha:1];
    NSGradient *gradientR = [[NSGradient alloc] initWithStartingColor:color endingColor:color2];
    
    NSPoint centro = NSMakePoint(NSMidX(bounds), NSMidX(bounds));
    NSPoint punto2 = NSMakePoint(centro.x+(random() % 200), (centro.y-(random() % 200)));
    
    CGFloat primerRadio = MIN(
                              (bounds.size.width/4)-2.0,
                              (bounds.size.height/4)-2.0);
    
    [gradientR drawFromCenter:centro radius:primerRadio toCenter:punto2 radius:2 options:0];
}
@end
//  By: RETBOT
