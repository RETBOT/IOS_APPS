//
//  main.m
//  appPunto
//
//  Created by Usuario invitado on 30/08/22.
//

#import <Foundation/Foundation.h>
#import "Punto.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Punto *punto1 = [Punto new];
        Punto *punto2 = [Punto new];
        
        int x1,y1,x2,y2;
        NSLog(@"X1 : ");
        scanf("%d",&x1);
        NSLog(@"Y1 : ");
        scanf("%d",&y1);
        NSLog(@"X2 : ");
        scanf("%d",&x2);
        NSLog(@"Y2 : ");
        scanf("%d",&y2);
        
        punto1.x = x1;
        punto1.y = y1;
        
        [punto2 setX:x2 y_Y : y2];
        
        Punto *pResul = [Punto new];
        pResul = [Punto sumar:punto1 mas:punto2];
        NSLog(@"Suma : X = %ld, Y = %ld",(long)[pResul x], (long)pResul.y);
        
        CGFloat distancia = [punto1 calcularDistancia2: punto2];
        NSLog(@"Distancia del punto %@ al punto %@ = %0.21f",punto1,punto2,distancia);
        
        Punto *sumar3Puntos = [Punto new];
        sumar3Puntos = [Punto sumar:3, punto1, punto2, pResul];
        NSLog(@"Suma de 3 puntos : x = %ld, Y = %ld",[sumar3Puntos x], sumar3Puntos.y);
        
        NSString *cadena = [Punto sistema];
        
        NSLog(@"Cadena de la clase %@", cadena);
        
        NSInteger nPuntos = [Punto numPuntos];
        NSLog(@"Numero de puntos = %ld", (long)nPuntos);
        
        // Tutorials point Numbers
    }
    return 0;
}
