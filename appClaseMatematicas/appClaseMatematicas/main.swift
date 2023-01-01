//
//  main.swift
//  appClaseMatematicas
//
//  Created by Usuario invitado on 08/11/22.
////  By: RETBOT

import Foundation

class Matematicas{
    static func factorial(n: Int) -> Int {
        //var f : Int = 1
        if n == 0 || n == 1 {
            return 1//f
        }
        else {
            return n * factorial(n: n - 1)
        }
    }
    
    static func factorial(n: Double) -> Double {
        var f : Double = 1
        if n == 0 || n == 1{
            return f
        }
        for i in 1...Int(n){
            f *= Double(i)
        }
        return f
    }
    
    // Constante de Euler
    static func serieE()->Double{
        var serie:Double = 0.0
        var i = 0
        repeat{
            serie += 1.0 / factorial(n: Double(i))
            i += 1;
        }while(serie <= exp(1.0));
        
        return serie
    }//  By: RETBOT
    // determinar si un numero entero es primo
    
    static func esPrimo(n: Int)->Bool{
        var esprimo = true
        var i = 2
        while i < n{
            if n % i == 0 {
                esprimo = false
            }
            i += 1
        }
        return esprimo
    }
    static func esPrimo2(n: Int)->Bool{
        var esprimo = true
        var i = 1
        while i < n{
           (n % i == 0) ? (esprimo = false) : ()
            i += 1
         }
        return esprimo
    }
                       
    static func anoBisiesto(anho: Int)->Bool{
        var esbisiesto = true
        (anho % 4 == 0 && anho % 100 != 0) || anho % 400 == 0 ? (esbisiesto=true) : (esbisiesto=false)
        
        return esbisiesto
    }
    
    
}

print("Ingresa un valor : ")
var dato : String = readLine()!
print("Dato capturado = \(dato)")
var num:Int? = Int(dato)
print("Valor entero = \(num!)")
//  By: RETBOT
var serieEuler = Matematicas.serieE()
print("Serie de Euler = \(serieEuler)")

var fact = Matematicas.factorial(n: num!)
print("Factorial de  \(num!) = \(fact)")

var primo = Matematicas.esPrimo(n: num!)
/*
if primo {
    print("El num \(num!) es primo")
}
else {
    print("El num \(num!) no es primo")
}*/


primo ?  print("El num \(num!) es primo") : print("El num \(num!) no es primo")

var anho = 2022
var esBisiesto = Matematicas.anoBisiesto(anho: anho)

if esBisiesto {
    print("El año \(anho) es bisiesto")
}
else {
    print("El año \(anho) no es bisiesto")
}
//  By: RETBOT

