//
//  ContentView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 06/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var authModelView = AuthViewModel()
    
    var body: some View {
        VStack {
            if authModelView.isLoggedIn {
                ToDoListView()
            } else {
                AuthView()
            }
        }
        .onAppear(perform: getUser)
    }
    
    func getUser() {
        authModelView.listening()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
