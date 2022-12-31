//
//  appPeliculasSwiftApp.swift
//  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//

import SwiftUI
import Firebase
@main
struct appPeliculasSwiftApp: App {
    init() {
        FirebaseApp.configure() // inicio de la configuracion de la base de datos 
        }
         
        var body: some Scene {
            WindowGroup {
                ContentView()
            }
        }
}
