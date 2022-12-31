//
//  main.swift
//  appSwiftClase
//
//  Created by Guest User on 11/11/22.
//

import Foundation

class Clase {
    var a:Int
    var b:Int
    static var c: Int = 0
    
    init(a:Int, b:Int){
        self.a = a
        self.b = b
        Clase.c += 1
    }
    
    func imprimir(){
        print("Valor a = \(a)")
        print("Valor b = \(b)")
        print("Valor c = \(Clase.c)")
    }
}
let objeto = Clase(a: 100, b: 200)
objeto.imprimir();

let objetoAux = objeto
print("Direccion de objeto : \(Unmanaged.passUnretained(objeto).toOpaque())")
print("Direccion de objeto Aux : \(Unmanaged.passUnretained(objetoAux).toOpaque())")

print("Valor de a = \(objeto.a)")

objetoAux.a = 1250

print("Valor de a = \(objeto.a)")
