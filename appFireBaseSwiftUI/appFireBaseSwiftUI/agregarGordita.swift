//
//  agregarGordita.swift
//  appFireBaseSwiftUI
//
//  Created by Guest User on 12/12/22.
//

import SwiftUI

struct agregarGordita: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var nuevaGordita = ""
    var body: some View {
        VStack {
            TextField("Sabor", text: $nuevaGordita)
            Button {
                // add dog
                dataManager.agregarGordita(sabor: nuevaGordita)
            } label: {
                Text("Guardar")
            }
        }.padding()
    }
}

struct agregarGordita_Previews: PreviewProvider {
    static var previews: some View {
        agregarGordita()
    }
}
