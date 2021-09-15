//
//  User.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 08/09/21.
//

import Foundation

class User {
    var uid: String
    var email: String?
    var username: String?
    
    init(uid: String, email: String?, username: String?) {
        self.uid = uid
        self.email = email
        self.username = username
    }
}
