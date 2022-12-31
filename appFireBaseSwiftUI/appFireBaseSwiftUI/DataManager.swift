//
//  DataManager.swift
//  appFireBaseSwiftUI
//
//  Created by Guest User on 12/12/22.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var gorditas: [Gorditas] = []
    @Published var pedido: [Pedido] = []
    
    init() {
        fetchGorditas()
    }
    
    func fetchGorditas() {
        gorditas.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Gorditas")
        
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents{
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let sabor = data["sabor"] as? String ?? ""
                    
                    let gordita = Gorditas(id: id, sabor: sabor)
                    self.gorditas.append(gordita)
                }
            }
        }
    }
    
    func agregarGordita(sabor: String){
        let db = Firestore.firestore()
        let ref = db.collection("Gorditas").document(sabor)
        
        ref.setData(["sabor": sabor, "id": 10]) {error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchPedidos() {
        pedido.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Pedido")
        
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents{
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let nombre = data["nombre"] as? String ?? ""
                    let gorditas = data["gorditas"] as? String ?? ""
                    
                    let pedido = Pedido(id: id, nombre: nombre, gorditas: gorditas)
                    self.pedido.append(pedido)
                }
            }
        }
    }
    
    func agregarPedido(nombre: String, gorditas: String){
        let db = Firestore.firestore()
        let ref = db.collection("Pedido").document(nombre)

        ref.setData(["nombre": nombre, "gorditas" :gorditas, "id": 1]) {error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
}
