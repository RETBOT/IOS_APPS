//
//  ListView.swift
//  appFireBaseSwiftUI
//
//  Created by Guest User on 12/12/22.
////  By: RETBOT

import SwiftUI

private var salir = false
struct ListView: View {
   
    @EnvironmentObject var dataManager: DataManager
    
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            List(dataManager.gorditas, id: \.id) { gordita in
                Text(gordita.sabor)
            }
            .navigationTitle("Pedido")
            .navigationBarItems(trailing: Button(action: {
                //add
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup){
                agregarGordita()
            }
        }//  By: RETBOT
        NavigationView {
            List(dataManager.pedido, id: \.id) { pedido in
                Text(pedido.nombre)
            }
            .navigationTitle("Pedido")
            .navigationBarItems(trailing: Button(action: {
                //add
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup){
                agregarGordita()
            }
        }
        ZStack {
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }//  By: RETBOT
}
