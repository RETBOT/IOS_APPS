//
//  main.swift
//  appSwiftOrdBurbuja
//
//  Created by Guest User on 11/11/22.
//
//  By: RETBOT
import Foundation
// 19, 23, 15, 100, 45
func burbuja(vec: Array<Int>) -> Array<Int> {
    var vecAux : [Int] = [] // Arreglo vacio
    if vec.isEmpty{
        return vecAux
    }
    else {
        vecAux = vec
    }
    
    for _ in 0..<vec.count-1 {
        for j in 0..<vec.count-1 {
            var aux = 0
            if (vecAux[j] > vecAux[j+1]) {
                aux = vecAux[j];
                vecAux[j] = vecAux[j+1]
                vecAux[j+1] = aux
            }
        }
    }
    return vecAux
}

func burbuja2(vec:inout Array<Int>){
    for _ in 0..<vec.count-1 {
        for j in 0..<vec.count-1 {
            var aux = 0
            if (vec[j] < vec[j+1]) {
                aux = vec[j]
                vec[j] = vec[j+1]
                vec[j+1] = aux
            }
        }
    }
}

//  By: RETBOT
var vec0 = [Int]()
vec0.append(19)
vec0.append(23)
vec0 += [15]
vec0 += [100]
vec0 += [45]

print("Arreglo 1 = \(vec0)")
burbuja2(vec: &vec0)
print("Arreglo 1 Ordenado = \(vec0)")

//  By: RETBOT
var vecEnteros : [Int]=[]
for _ in 1...5
{
  vecEnteros.append(Int.random(in: 10...100))
}
print("Datos generados")
print(vecEnteros)
vecEnteros = burbuja(vec: vecEnteros)
print("Datos Ordenados")
print(vecEnteros)

// Pase por referencia
print("Datos en orden inverso")
burbuja2(vec: &vecEnteros)
print(vecEnteros)
//  By: RETBOT
