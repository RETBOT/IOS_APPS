//
//  ContentView.swift
//  appFireBaseSwiftUI
//
//  Created by Guest User on 12/12/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        if !userIsLoggedIn{
            ListView()
        } else {
            content
        }
    }
    
    var content: some View {
        ZStack {
            Color.green
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y:-350)
            
            VStack(spacing: 20) {
                Text("GORDITAS APP")
                    .foregroundColor(.white)
                    .font(.system(size:40, weight: .bold, design: .rounded))
                    .offset(x: -80, y: -100)
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                SecureField("Contraseña", text: $password)
                    .foregroundColor(.white)
                    .foregroundColor(.white)
                    .placeholder(when: password.isEmpty){
                        Text("Contraseña")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                Button{
                // sign up
                    iniciarsesion()
                } label: {
                    Text("Crear cuenta")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors: [.pink, .red], startPoint: .top, endPoint: .bottomTrailing))
                                .foregroundColor(.white))
                }
                .padding(.top)
                .offset(y: 110)
                
                Button {
                    // login
                    registro()
                } label: {
                    Text("Iniciar sesion")
                        .bold()
                        .foregroundColor(.white)
                }.padding(.top)
                    .offset(y:110)
                
            }
            .frame(width:350)
            .onAppear{
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        userIsLoggedIn.toggle()
                    }
                }
            }
            }
        .ignoresSafeArea()
    }
    
    func iniciarsesion(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func registro(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    func cerrarsesion(){
        userIsLoggedIn = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View> (
        when shouldShow:Bool,
        alignement: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignement) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
