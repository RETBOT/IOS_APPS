//
//  ContentView.swift
//  appSwiftTextField1
//
//  Created by Guest User on 08/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var entrada : String = ""
    var body: some View {

        Group{
            VStack{
                TextField("Tu Nombre ", text:$entrada)
                    .frame(height:50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.green)
                    .padding()
                if !entrada.isEmpty {
                    Text("Nombre : "+entrada)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
