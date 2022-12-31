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
        FirebaseApp.configure()
        }
         
        var body: some Scene {
            WindowGroup {
                ContentView()
            }
        }
}
