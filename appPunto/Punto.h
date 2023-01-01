//
//  Punto.h
//  appPunto
//
//  Created by Usuario invitado on 30/08/22.
//
//  By: RETBOT
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Punto : NSObject
{
    NSInteger x;
    NSInteger y;
}

// metodos de clase
+(NSString *) sistema;
+(NSInteger) numPuntos;

//Operador (-) Indica metodos de instancia
-init; // inicializador o constructor
-(NSInteger) x;
-(void) setX:(NSInteger) paramX;
-(void) setX:(NSInteger) paramX y_Y:(NSInteger) paramY;
-(void) setX:(NSInteger) paramX incrementar:(NSInteger) paramSumar;

//  By: RETBOT
-(NSInteger) y;
-(void) setY:(NSInteger) paramY;
-(void) setY:(NSInteger) paramY x_X:(NSInteger) paramX;
-(void) setY:(NSInteger) paramY incrementar:(NSInteger) paramSumar;


//+(Punto *) sumar:(Punto *)p1 con: (Punto *)p2;
+(Punto *) sumar:(Punto *)p1 mas: (Punto *)p2;

-(Punto *) sumar:(Punto *)p;

// utilizar parametros variables
+(Punto *) sumar:(NSInteger)n,...;


// implemente un metodo para calcular la distancia de dos puntos
// D = |(x2-x1)2 + (y2-y1)2
-(CGFloat) calcularDistancia:(Punto *)p1 mas: (Punto *)p2;
-(CGFloat) calcularDistancia2:(Punto *)p;
@end
//  By: RETBOT
NS_ASSUME_NONNULL_END
