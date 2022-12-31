//
//  Graficos.m
//  appGraficosIPhone
//
//  Created by Usuario invitado on 01/11/22.
//

#import "Graficos.h"

@implementation Graficos

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    /*
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGContextMoveToPoint(context,x1, y1);
    CGContextAddLineToPoint(context,x2,y2);
    
    CGContextStrokePath(context);
    
    // ROMBO
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 150);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 100, 100);
    
    CGContextStrokePath(context);
    
    //
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    
    CGContextFillPath(context);
    
    // dibujar un rectangulo
    CGRect rectangulo = CGRectMake(20, 250, 370, 250);
    CGContextAddRect(context, rectangulo);
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextStrokePath(context);
     */
    
    
    // Drawing code

    //CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    //CGContextSetLineWidth(context, 3.0);
    // Color
    //CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    //CGContextMoveToPoint(context,x1, y1);
    //CGContextAddLineToPoint(context,x2,y2);
    
   // CGContextStrokePath(context);
    
    // Arco con curva de Bezzier
    /*CGContextMoveToPoint(context, 10, 200);
    CGContextAddCurveToPoint(context, 0, 50, 300, 200, 300, 400);
    CGContextStrokePath(context);
    */
    // Curva QUADRATIC DE BEZIER
    //CGContextMoveToPoint(context, rect.size.width/2, 0);
    //CGContextMoveToPoint(context, 0, 0);
    //CGContextAddQuadCurveToPoint(context, rect.size.width,rect.size.height/2, 0, rect.size.height);
    //CGContextMoveToPoint(context, xControl, yControl);
    //CGContextAddCurveToPoint(context, x1, y1, x2, y2, xControl, yControl);
    //CGContextStrokePath(context);
    if(estado == 1){
        [self linea_X1:x1 Y1:y1 X2:x2 Y2:y2];
    }else if( estado == 2){
        [self rombo_XControl:xControl YControl:yControl X1:x1 Y1:y1 X2:x2 Y2:y2 X3:x3 Y3:y3 X2Control:x2Control Y2Control:y2Control];
    }else if(estado == 3){
        [self rectangulo_X1:x1 Y1:y1 X2:x2 Y2:y2];
    }else if(estado == 4){
        [self arco_Bezzier_xControl:xControl yControl:yControl x2Control:x2Control y2Control:y2Control x1:x1 y1:y1 x2:x2 y2:y2];
    }else if(estado == 5){
        [self arco_quadratic_bezier_XControl:xControl YControl:yControl X1:x1 Y1:y1 X2:x2 Y2:y2];
    }else if(estado == 6){
        [self curva_bezier_XControl:xControl YControl:yControl X2Control:x2Control Y2Control:y2Control X1:x1 Y1:y1 X2:x2 Y2:y2];
    }
}

- (IBAction)segmentControlValue:(UISegmentedControl *)sender {
    // estado 1 = Linea
    // estado 2 = rombo
    switch (self.segmentControl.selectedSegmentIndex) {
        case 0:
            // Linea
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            estado = 1;
            [_txtX3 setEnabled:false];
            [_txtY3 setEnabled:false];
            [_txtXControl setEnabled:false];
            [_txtYControl setEnabled:false];
            [_txtX2Control setEnabled:false];
            [_txtY2Control setEnabled:false];
            break;
        case 1: // rombo
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            [_txtX3 setEnabled:true];
            [_txtY3 setEnabled:true];
            [_txtXControl setEnabled:true];
            [_txtYControl setEnabled:true];
            [_txtX2Control setEnabled:true];
            [_txtY2Control setEnabled:true];
            estado = 2;
            break;
        case 2: // rectangulo
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            estado = 3;
            [_txtX3 setEnabled:false];
            [_txtY3 setEnabled:false];
            [_txtXControl setEnabled:false];
            [_txtYControl setEnabled:false];
            [_txtX2Control setEnabled:false];
            [_txtY2Control setEnabled:false];
            break;
        case 3: // Arco con curva de Bezzier
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            [_txtXControl setEnabled:true];
            [_txtYControl setEnabled:true];
            [_txtX2Control setEnabled:true];
            [_txtY2Control setEnabled:true];
            estado = 4;
            [_txtX3 setEnabled:false];
            [_txtY3 setEnabled:false];
            
            break;
        case 4: // arco_quadratic_bezier
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            [_txtXControl setEnabled:true];
            [_txtYControl setEnabled:true];
            [_txtX2Control setEnabled:true];
            [_txtY2Control setEnabled:true];
            estado = 5;
            [_txtX3 setEnabled:false];
            [_txtY3 setEnabled:false];
            break;
        case 5: // curva_quadratic_bezier
            [_txtX1 setEnabled:true];
            [_txtY1 setEnabled:true];
            [_txtX2 setEnabled:true];
            [_txtY2 setEnabled:true];
            [_txtXControl setEnabled:true];
            [_txtYControl setEnabled:true];
            [_txtX2Control setEnabled:true];
            [_txtY2Control setEnabled:true];
            estado = 6;
            [_txtX3 setEnabled:false];
            [_txtY3 setEnabled:false];
            break;
        default:
            estado = 0;
            break;
    }
}

- (IBAction)btnDibujo:(UIButton *)sender {
    x1 = [_txtX1.text integerValue];
    y1 = [_txtY1.text integerValue];
    x2 = [_txtX2.text integerValue];
    y2 = [_txtY2.text integerValue];
    x3 = [_txtX3.text integerValue];
    y3 = [_txtY3.text integerValue];
    xControl = [_txtXControl.text integerValue];
    yControl = [_txtYControl.text integerValue];
    x2Control = [_txtX2Control.text integerValue];
    y2Control = [_txtY2Control.text integerValue];
    
    [self setNeedsDisplay];
}

-(void)linea_X1 :(NSInteger)x1 Y1:(NSInteger)y1  X2:(NSInteger)x2 Y2:(NSInteger)y2{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGContextMoveToPoint(context,x1, y1);
    CGContextAddLineToPoint(context,x2,y2);
    
    CGContextStrokePath(context);
}

-(void) rombo_XControl:(NSInteger)xControl YControl:(NSInteger)yControl
                    X1:(NSInteger)x1 Y1:(NSInteger)y1
                    X2:(NSInteger)x2 Y2:(NSInteger)y2
                    X3:(NSInteger)x3 Y3:(NSInteger)y3
                    X2Control:(NSInteger)x2Control Y2Control:(NSInteger)y2Control{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    // ROMBO
    CGContextMoveToPoint(context, xControl, yControl); // 100, 100);
    CGContextAddLineToPoint(context, x1, y1); // 150, 150);
    CGContextAddLineToPoint(context, x2, y2); // 100, 200);
    CGContextAddLineToPoint(context, x3, y3); // 50, 150);
    CGContextAddLineToPoint(context, xControl, yControl); // 100, 100);
    
    CGContextStrokePath(context);
}

-(void) rectangulo_X1 :(NSInteger)x1 Y1:(NSInteger)y1  X2:(NSInteger)x2 Y2:(NSInteger)y2{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    // dibujar un rectangulo
    CGRect rectangulo = CGRectMake(x1, y1, x2, y2);
                                //(20, 250, 370, 250)
    CGContextAddRect(context, rectangulo);
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextStrokePath(context);
}

-(void) arco_Bezzier_xControl :(NSInteger)xControl yControl: (NSInteger) yControl x2Control :(NSInteger)x2Control y2Control: (NSInteger) y2Control x1:(NSInteger)x1 y1:(NSInteger)y1
              x2:(NSInteger)x2 y2:(NSInteger)y2{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    // Arco con curva de Bezzier
    CGContextMoveToPoint(context, x1, y1);
    CGContextAddCurveToPoint(context, xControl, yControl, x2Control, y2Control, x2, y2);
    CGContextStrokePath(context);
}

-(void) arco_quadratic_bezier_XControl:(NSInteger)xControl YControl:(NSInteger)yControl
    X1:(NSInteger)x1 Y1:(NSInteger)y1
    X2:(NSInteger)x2 Y2:(NSInteger)y2{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    // Curva QUADRATIC DE BEZIER
    CGContextMoveToPoint(context, x1, y1);
    CGContextAddQuadCurveToPoint(context, xControl, yControl, x2, y2);
    //CGContextMoveToPoint(context, xControl, yControl);
    //CGContextAddCurveToPoint(context, x1, y1, x2, y2, xControl, yControl);
    CGContextStrokePath(context);
}


-(void) curva_bezier_XControl:(NSInteger)xControl YControl:(NSInteger)yControl X2Control:(NSInteger)x2Control Y2Control:(NSInteger)y2Control X1:(NSInteger)x1 Y1:(NSInteger)y1 X2:(NSInteger)x2 Y2:(NSInteger)y2 {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    //Ancho
    CGContextSetLineWidth(context, 3.0);
    // Color
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    // Curva DE BEZIER
    CGContextMoveToPoint(context, x1, y1);
    CGContextAddCurveToPoint(context, xControl, yControl, x2Control, y2Control, x2, y2);
    CGContextStrokePath(context);
}
@end
    
