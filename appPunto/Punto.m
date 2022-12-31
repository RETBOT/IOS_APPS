//
//  Punto.m
//  appPunto
//
//  Created by Roberto Esquivel Troncoso on 30/08/22.
//

#import "Punto.h"
#import <math.h>

@implementation Punto

static NSInteger nPuntos = 0;

+(NSString *) sistema;
{
    return @"Sistema Cartesiano";
}

+(NSInteger) numPuntos{
    return nPuntos;
}


//Operador (-) Indica metodos de instancia
-init; // inicializador o constructor
{
    if((self = [super init]))
        nPuntos++;
    return self;
}

-(NSInteger) x
{
    //return [self x];
    return x;
}

-(void) setX:(NSInteger) paramX
{
    //x = paramX;
    x = paramX;
}
-(void) setX:(NSInteger) paramX y_Y:(NSInteger) paramY
{
    x = paramX;
    y = paramY;
}


-(void) setX:(NSInteger) paramX incrementar:(NSInteger) paramSumar
{
    x = paramX + paramSumar;
}

-(NSInteger) y
{
    return y;
}
-(void) setY:(NSInteger) paramY
{
    y = paramY;
}

-(void) setY:(NSInteger) paramY x_X:(NSInteger) paramX
{
    y = paramY;
    x = paramX;
}

-(void) setY:(NSInteger) paramY incrementar:(NSInteger) paramSumar
{
    y = paramY + paramSumar;
}


//+(Punto *) sumar:(Punto *)p1 con: (Punto *)p2;
+(Punto *) sumar:(Punto *)p1 mas: (Punto *)p2
{
//    Punto *result = [[Punto alloc] init];
    Punto *resul = [Punto new];
    resul->x = [p1 x] + [p2 x];
    resul->y = [p1 y] + [p2 y];
    return resul;
}

-(Punto *) sumar:(Punto *)p
{
    Punto *resul = [Punto new];
    resul->x = [self x] + [p x];
    resul->y = [self y] + [p y];
    return resul;
}

// utilizar parametros variables
// Documentar ñas funciones utilizadas
// https://elbauldelprogramador.com/parametros-variabl-es-en-cc/
+(Punto *) sumar:(NSInteger)n,...
{
    Punto *aux = [Punto new];
    va_list parametros;
    va_start(parametros, n);
    Punto *p;
    while(n-- > 0)
    {
        p = va_arg(parametros, Punto *);
        aux->x += p->x;
        aux->y += p->y;
    }
    va_end(parametros);
    return aux;
}
// ESTRUCTURADO
-(CGFloat) calcularDistancia:(Punto *)p1 mas: (Punto *)p2
{
    CGFloat distancia = sqrt(pow(p2.x - p1.x, 2)+pow(p2.y - p1.y, 2));
    return distancia;
}

-(CGFloat) calcularDistancia2:(Punto *)p {
    //CGFloat dist = sqrt(pow(p.x - x, 2.0) + pow([p y] - y, 2));
    //return dist;
    return sqrt(pow(p.x - x, 2.0) + pow([p y] - y, 2));
  
   
    
    
}

@end
