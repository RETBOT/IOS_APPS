//
//  main.swift
//  appArreglosUnidimensionales
//
//  Created by Usuario invitado on 09/11/22.//  By: RETBOT
//

import Foundation

print("Hello, World!")

var vec0 = [Int]()
vec0.append(100)
vec0.append(200)
vec0 += [300]
print(vec0)
var i: UInt = 0
for val in vec0{
    print("Vec [\(i)] = \(val)")
    i += 1
}

var vec1 = [Float](repeating: 1.7, count: 5)
print("Valor del primer elemento = \(vec1[0])")
print("Valor del segundo elemento = \(vec1[1])")

let vec3 = Array(1...7)
print(vec3)

let vec4 = Array(1..<7)
print(vec4)

var vec3Uvec4 = vec3 + vec4
print(vec3Uvec4)

for val in vec3Uvec4{
    print(val)
}

var k = 0
while k < vec3Uvec4.count {
    print("Vec[\(k)] = \(vec3Uvec4[k])")
    k += 1
}//  By: RETBOT

vec3Uvec4.reverse()
print(vec3Uvec4)

print("Usando ForEach")
vec3Uvec4.forEach{
    print($0)
}

print("Vec 3")//  By: RETBOT
vec3.forEach{
    num in print(num)
}

let nombre = "BOBADILLA"

for char in nombre.reversed(){
    print(char, terminator: " 🏳️‍🌈 ")
}
print(" ")

let nombre2 = String(nombre.reversed())
print(nombre2)
for char in nombre2.reversed(){
    print(char, terminator: " 🏳️‍🌈 ")
}

print(nombre.reversed())
print(nombre)
let nada = nombre.reversed()
print(nada)
