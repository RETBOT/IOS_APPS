//
//  main.swift
//  appFuncionesReferencias
//
//  Created by Usuario invitado on 10/11/22.
//

import Foundation

func intercambiar(a:inout Int, b:inout Int){
    let aux = a
    a = b
    b = aux
}

func intercambiar(_ a: inout Int, _ b:inout Int){
    let aux = a
    a = b
    b = aux
}

var n1 = 100
var n2 = 200

print("Num 1 = \(n1), Num2 = \(n2)")
intercambiar(a: &n1, b: &n2)
print("Intercambio 1: Num 1 = \(n1), Num2 = \(n2)")
intercambiar(&n1, &n2)
print("Intercambio 2: Num 1 = \(n1), Num2 = \(n2)")
