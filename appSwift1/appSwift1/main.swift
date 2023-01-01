//
//  main.swift
//  appSwift1
//
//  Created by Usuario invitado on 07/11/22.
//
//  By: RETBOT
import Foundation

print("Hello, World!")
print("Hola mundo")


var n1 = 100
var n2 = 50
var resultado = n1 ^ n2
print("n1 = \(n1) ^ n2 = \(n2) = ",resultado)

let binario = String(resultado, radix: 2)
//Let es constante, siempre y cuando no cambie el valor
print("\t\t Binario = \(binario) \n ")

print("\(n1) & \(n2) = ", n1 & n2 )
print("\(n1) | \(n2) = ", n1 | n2 )
print("\(n1) + \(n2) = ", n1 + n2 )

var val1 = 255
let binResul = String ( val1, radix: 2)
print("\t Numero : \(val1) = \(binResul) ")

let octResul = String ( val1, radix: 8)
print("\t Numero : \(val1) = \(octResul) ")

let exaResul = String ( val1, radix: 16)
print("\t Numero : \(val1) = \(exaResul) ")

let valBinario = "1010110"
let numBinario = String(Int(valBinario, radix: 2)!, radix: 16)
print(" \(valBinario) =  \(numBinario) en hexadecimal")

var valhexa = "face"
let valBinario2 = String(Int(valhexa, radix: 16)!, radix: 2)
print(" \(valhexa) =  \(valBinario2) en hexadecimal")


var valhexaint = Int(valhexa, radix: 16)!
valhexaint <<= 2
print(" \(valhexa) =  \(valBinario2) en hexadecimal")
let valBinInt = String(valhexaint, radix:2)

print(" \(valhexaint) =  \(valBinario2) en hexadecimal")

print("Rango Cerrado")
let rangoCerrado = ...5
print(rangoCerrado.contains(7))
print(rangoCerrado.contains(4))
print(rangoCerrado.contains(-100000000))


print("Rango Abierto")
let rangoAbierto = 5...
print(rangoAbierto.contains(7))
print(rangoAbierto.contains(4))
print(rangoAbierto.contains(100000000))
//  By: RETBOT
let numInt64: UInt64 = 9223372036854775807
print(rangoAbierto.contains(147483647))


var cadena = "TEC LAGUNA"
var cadResultado: String = ""
let caracteres = Array(cadena)
for i in 0..<caracteres.count
{
    let c = String(caracteres[i])
    cadResultado += c.lowercased()
    print(cadResultado)
}
print(cadResultado)

func mayorMenor ( array : [Int]) -> (mayor:Int, menor:Int)
{
var mayor = array[0]
var menor = array[0]
    for val in array[1..<array.count]
    {
        if val < menor {
            menor = val
        }
        else if val>mayor {
            mayor=val
        }
    }
    return(mayor, menor)
    let funcion = mayorMenor(array: [25,60,12,37,45])
    print("Valor mayor: \(funcion.mayor) ")
    print(mayor)
}//  By: RETBOT
var num = 10
let facto = factorial(n: num)
print("Factorial de \(num) = \(facto)")

// Diseñe e implemente un metodo para cacular el factorial de un numero
func factorial ( n: Int) -> Int{
    var fact = 1
    var n1 = n
    while(n1 != 0){
        fact = fact * n1
        n1 = n1 - 1
    }
    return fact
}

func factorial ( n: Double) -> Double{
    var fact: Double = 1
    var n1 = n
    while(n1 != 0){
        fact = fact * n1
        n1 = n1 - 1
    }
    return fact
}
//  By: RETBOT
print(exp(1.0))

// Diseñe e implemente un meto do para calcular el valor de la constante de euler
func euler() -> Double{
    var serie:Double = 0.0
    var i = 0
    repeat{
        serie += 1.0 / factorial(n: Double(i))
        i += 1;
    }while(serie <= exp(1.0));
    return serie
}

//  By: RETBOT
