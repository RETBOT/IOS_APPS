//
//  ContentView.swift
//  appSwiftUI_1
//
//  Created by Guest User on 07/12/22.
////  By: RETBOT

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("RET")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                //.padding()
                .padding(.bottom, 50.0)
            HStack{
            Text("BOT")
                .font(.title)
                .fontWeight(.bold)
                .padding(.all, 10.0)
                .foregroundStyle(.linearGradient(colors: [.green, .red, .blue], startPoint: .top, endPoint: .bottom))
        }
        }
    }
}//  By: RETBOT

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
