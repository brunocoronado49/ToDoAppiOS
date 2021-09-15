//
//  FormRegisterView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 11/09/21.
//

import SwiftUI

struct FormRegisterView: View {
    @State private var email = ""
    @State private var password = ""
    
    @EnvironmentObject var authModelView: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Crea tu cuenta")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            TextField("Correo", text: $email)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding()
                .foregroundColor(.neumorphictextColor)
                .background(Color.background)
                .cornerRadius(6)
                .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
                .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
                .padding(.bottom, 20)
            
            SecureField("Contraseña", text: $password)
                .padding()
                .foregroundColor(.neumorphictextColor)
                .background(Color.background)
                .cornerRadius(6)
                .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
                .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
                .padding(.bottom, 20)
            
            Button("Regístrate") {
                authModelView.signUp(email: email, password: password) {
                    (result, error) in
                    if error != nil {
                        print("error")
                    } else {
                        self.email = ""
                        self.password = ""
                    }
                }
                authModelView.isLoggedIn = true
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 150, height: 50)
            .background(Color(hex: 0x82ccdd))
            .cornerRadius(10)
            .shadow(radius: 10)
            
            Spacer()
            
            Text("Braunybrunista @Copyright. Todos los derechos reservados")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct FormRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        FormRegisterView()
    }
}
