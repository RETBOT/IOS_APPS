//
//  appFireBaseSwiftUIApp.swift
//  appFireBaseSwiftUI
//
//  Created by Guest User on 12/12/22.
////  By: RETBOT

import SwiftUI
import Firebase

@main
struct appFireBaseSwiftUIApp: App {
    @StateObject var dataManager = DataManager()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(dataManager)
        }
    }
}
//  By: RETBOT
