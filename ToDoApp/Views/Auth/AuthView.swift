//
//  AuthView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 10/09/21.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.background.ignoresSafeArea()
                VStack {
                    LogoAuthView()
                        .padding(.bottom, 30)
                    FormAuthView()
                    
                    Spacer()
                    
                    Text("¿No tienes una cuenta?")
                        .padding(.bottom, 5)
                    
                    NavigationLink(destination: RegisterView()) {
                        Text("Regístrate")
                            .foregroundColor(.blue)
                    }
                }
                .navigationBarHidden(true)
                .background(Color.background)
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
