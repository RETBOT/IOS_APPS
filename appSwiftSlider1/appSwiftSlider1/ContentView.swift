//
//  ContentView.swift
//  appSwiftSlider1
//
//  Created by Guest User on 08/12/22.
//
//  By: RETBOT
import SwiftUI
/*
struct ContentView: View {
    @State var valSlider : Double = 0
    var body: some View {
        VStack{
            Slider (value: $valSlider, in: 0...20, step: 1)
            Text("Valor : \(valSlider, specifier : "%.2f")")
                .accentColor(Color(red: 1.0, green: 0.0, blue: 0.0))
        }
    }
}
 */
struct ContentView: View {
    @State private var centigrados: Double = 0.0
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Slider(value: $centigrados, in: -100...100)
            
                Text("Valor : \(centigrados, specifier : "%.1f") Centigrados es \(centigrados * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
            }.background(Color.green)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}//  By: RETBOT
