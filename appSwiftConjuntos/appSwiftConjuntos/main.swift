//
//  main.swift
//  appSwiftConjuntos
//
//  Created by Guest User on 16/11/22.
//
//  By: RETBOT
import Foundation

let conjuntoVacio:Set<Int> = []
print(conjuntoVacio)

let conjuntoVacio2:Set<Int> = Set()
print(conjuntoVacio2)

var conjuntoA: Set = [1,5,3,9]
print(conjuntoA)
for val in conjuntoA{
    print(val,terminator: " | ")
}
print()
//var valorElimimado = conjuntoA.remove(3)
//print("Valor eliminado : ", valorElimimado as Any)
//print(conjuntoA)
//print("Valor a eliminar")
//var num = Int(readLine()!)

//if let valor = conjuntoA.remove(num!){
//    print("Valor Eliminado : \(valor)")
//    print(conjuntoA)
//}else{
//    print("Elemento no encontrado")
//}
//  By: RETBOT
conjuntoA.insert(9)
print(conjuntoA)

conjuntoA.insert(6)
print(conjuntoA)

var conjuntoB:Set<Int> = []
for _ in 1...5 {
    conjuntoB.insert(Int(arc4random_uniform(100)))
}

print("Conjunto A")
print(conjuntoA)

print("Conjunto B")
print(conjuntoB)

// Tarea de fin de semana
// aplicar las operaciones sobre conjuntos
// tal como se leyo en wikipedia
print("Union Conjuntos A->B")
let unionAB = conjuntoA.union(conjuntoB).sorted()
print("A:\(conjuntoA) U B:\(conjuntoB) = \(unionAB)")

print("Interseccion Conjuntos A->B")
let interseccionAB = conjuntoA.intersection(conjuntoB)
print("A:\(conjuntoA) ∩ B:\(conjuntoB) = \(interseccionAB)")

print("Diferencia Conjuntos A->B")
let diferenciaAB = conjuntoA.subtracting(conjuntoB)
print("Diferencia entre A-B  = \(diferenciaAB)")

let diferenciaSimetricaAB = conjuntoA.symmetricDifference(conjuntoB)
print("Diferencia Simetrica entre A-B = \(diferenciaSimetricaAB)")

let frutas:Set=["🍏", "🍉", "🥭", "🥝"]
let frutasyVerduras: Set=["🥑","🍏","🥦","🍌","🍅", "🍉","🍆","🥬", "🍈","🥝", "🫑", "🥒"]
print("Frutas = \(frutas)")
print("Frutas y verduras : \(frutasyVerduras)")

// agregar : Union, interseccion, etc
//  By: RETBOT
if frutas.isSuperset(of: frutasyVerduras) {
    print("Frutas No es SUPERCONJUNTO DE FRUTAS Y VERDURAS")
}else{
    print("Frutas SUPERCONJUNTO DE FRUTAS Y VERDURAS")
}

if frutasyVerduras.isSuperset(of: frutas) {
    print("Frutas y verduras es SUPERCONJUNTO DE FRUTAS")
}else{
    print("Frutas y verduras es SUPERCONJUNTO DE FRUTAS")
}

if frutas.isSubset(of: frutasyVerduras) {
    print("Frutas es SUBCONJUNTO DE FRUTAS Y VERDURAS")
}else{
    print("Frutas es SUBCONJUNTO DE FRUTAS Y VERDURAS")
}

print("Frutas es disjunto de FRUTAS Y VERDURAS : ", frutas.isDisjoint(with: frutasyVerduras))

let animales : Set=["🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🐔"]
print("Frutas es disjunto de animales : ", frutas.isDisjoint(with: animales))
//  By: RETBOT
