//
//  Task.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 06/09/21.
//

import Foundation
import FirebaseFirestoreSwift

struct Task: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var task: String
    var desc: String
    var isCompleted: Bool
}
