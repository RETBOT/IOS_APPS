//
//  ContentView.swift
//  appSwiftBotonAnimation
//
//  Created by Guest User on 08/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var contadorAnimacion:CGFloat = 1
    var body: some View {
        Button("CLICK"){
            self.contadorAnimacion += 1
        }
        .padding(50)
        .background(Color.cyan)
        .foregroundColor(.white)
        .clipShape(Circle())
        /*.scaleEffect(contadorAnimacion)
        .blur(radius: (contadorAnimacion - 1) * 3)
        .animation(Animation.easeOut(duration: 1).repeatForever(autoreverses: true))
        */
        .overlay(
            Circle()
            .stroke(Color.blue)
            .scaleEffect(contadorAnimacion)
            .opacity(2 - contadorAnimacion)
            .animation(Animation.easeOut(duration: 1).repeatForever(autoreverses: false))
            )
            .onAppear(perform: {
                self.contadorAnimacion = 2
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
