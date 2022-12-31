//
//  main.swift
//  appSwitf1
//
//  Created by Usuario invitado on 07/11/22.
//

import Foundation

//print("Hello, World!")
var n1 = 100
var n2 = 50
var resultado = n1 ^ n2

print("\(n1)^\(n2) = ",resultado)

let binario = String(resultado, radix: 2)
print("\t\t En binario : \(resultado) = \(binario) \n")

print("\(n1) & \(n2) = ", n1&n2)
print("\(n1) | \(n2) = ", n1|n2)


var val1 = 255;
let binResult = String(val1, radix: 2)
print("Numero : \(val1) = \(binResult)")

let octResult = String(val1, radix: 8)
print("Numero : \(val1) = \(octResult)")

let hexaResult = String(val1, radix: 16)
print("Numero : \(val1) = \(hexaResult)")

let valBinario = "1010110";
let numBinario = String(Int(valBinario,radix: 2)!,radix: 16)
print("NumBinario = \(valBinario) a Hexa = \(numBinario)")

var valHexa = "face"
let valBinario2 = String(Int(valHexa,radix: 16)!,radix: 2)

print("Valor hexa = \(valHexa) a Binario = \(valBinario2)")
/**/

var valHexaInt = Int(valHexa,radix: 16)!
valHexaInt <<= 2
let valBinario3 = String(valHexaInt, radix: 2)
print("\(valHexaInt) = \(valBinario3) en binario")

// Rangos
print("RANGO CERRADO")
let rangoCerrado =  ...5
print(rangoCerrado.contains(7))
print(rangoCerrado.contains(4))
print(rangoCerrado.contains(-10000000000))

print("RANGO ABIERTO")
let rangoAbierto = 5...
print(rangoAbierto.contains(7))
print(rangoAbierto.contains(4))
print(rangoAbierto.contains(-10000000000))
print(rangoAbierto.contains(Int.max))

var cadena = "TEC LAGUNA"
var cadResult: String = ""
let caracteres = Array(cadena)
for i in 0..<caracteres.count{
    let c = String(caracteres[i])
    cadResult += c.lowercased()
    print(cadResult)
}
print(cadResult + " <3")

func mayorMenor(array: [Int]) -> (mayor:Int, menor:Int){
    var mayor = array[0]
    var menor = array[0]
    
    for val in array[1..<array.count]{
        if val < menor {
            menor = val
        }
        else if val > mayor {
            mayor = val
        }
    }
    return(mayor, menor)
}

let function = mayorMenor(array: [25,60,12,37,45])

print("Valor mayor = \(function.mayor), Valor menor = \(function.menor)")

print(function)
