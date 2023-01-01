//
//  Matematicas.h
//  Matematicas
//
//  Created by Guest User on 02/09/22.
//
//  By: RETBOT
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Matematicas : NSObject
- (NSNumber *)multiplicaA:(NSNumber *)a conB:(NSNumber *)b;

// implementar un metodo multiplica que no retorne el valor atravesz del metodo, que
// lo regrese el resultado utilizando un Puntero

- (void) multiplica:(NSNumber *)a conB:(NSNumber *)b resultado:(NSNumber *)resultado;
- (void) multiplica2:(NSNumber *)a conB:(NSNumber *)b resultado:(float *)resultado;
//  By: RETBOT
// Diseñe e implemente un metodo para iterativo para
// calcular el facorial de un numero entero
- (NSInteger) facorial: (NSInteger)a;

// Diseñe e implemente un metodo recursivo para iterativo para
// calcular el facorial de un numero entero
- (NSInteger) facorialR: (NSInteger)a;

/*
 Diseñe e implemente un metodo para:
 Determinar numeros primos
 Utilizar diferentes funciones trigonometricas
 agregarlas a la clse matematicas
 
 
 Leer material de la pagina human interface guide
 */

 // Numeros primos
- (Boolean) esPrimo: (NSInteger )num;

// Funciones trigonometricas
- (double) funTrigonometricas: (NSInteger )opc Numero:(double )num;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
