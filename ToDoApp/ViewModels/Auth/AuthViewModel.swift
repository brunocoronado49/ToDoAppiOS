//
//  AuthViewModel.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 08/09/21.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel: NSObject, ObservableObject {
    @Published var session: User?
    @Published var isLoggedIn = false
    @Published var tasks: [Task] = []
    @Published var taskRepo = TaskRepository()
    
    let auth = Auth.auth()
    
    
    // Function that listens if the user is logged in
    func listening() {
        _ = auth.addStateDidChangeListener { (auth, user) in
            if let user = user {
                self.session = User(uid: user.uid, email: user.email, username: user.displayName)
                self.isLoggedIn = true
                self.taskRepo.get()
            } else {
                self.isLoggedIn = false
                self.session = nil
            }
        }
    }
    
    func logIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        auth.signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        auth.createUser(withEmail: email, password: password, completion: handler)
    }
    
    func signOut() {
        try? auth.signOut()
        self.isLoggedIn = false
        self.session = nil
    }
    
}
