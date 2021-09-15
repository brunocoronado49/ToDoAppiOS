//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 06/09/21.
//

import SwiftUI
import Firebase

@main
struct ToDoAppApp: App {
        
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel())
                .environmentObject(TaskViewModel())
        }
    }
}
