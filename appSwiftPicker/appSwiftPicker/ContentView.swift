//
//  ContentView.swift
//  appSwiftPicker
//
//  Created by Guest User on 08/12/22.
//

import SwiftUI

enum Sabor: String, CaseIterable, Identifiable {
    case chocolate
    case vainilla
    case fresa
    case mango
    var id: String {
        self.rawValue
    }
}

struct VistaHelados: View {
    @State private var saborSeleccionado = Sabor.chocolate
    var body: some View {
        Picker("Sabor", selection: $saborSeleccionado) {
            Text("Chocolate 🍫").tag(Sabor.chocolate)
            Text("Vainilla 🍨").tag(Sabor.vainilla)
            Text("Fresa 🍓").tag(Sabor.fresa)
            Text("Mango 🥭").tag(Sabor.mango)
        }
        Text("Sabor seleccionado : \(saborSeleccionado.rawValue)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VistaHelados()
    }
}
