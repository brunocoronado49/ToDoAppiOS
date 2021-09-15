//
//  TaskRepository.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 06/09/21.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

final class TaskRepository: ObservableObject {
    private let path = "\(String(describing: Auth.auth().currentUser?.uid ?? "Error"))"
    private let store = Firestore.firestore()
    @Published var task: [Task] = []
    
    init() {
        get()
    }
    
    func get() {
        store.collection(path).addSnapshotListener {
            (snapshot, error) in
            if let error = error {
                print(error)
                return
            }
            self.task = snapshot?.documents.compactMap {
                try? $0.data(as: Task.self)
            } ?? []
        }
    }
    
    func add(_ task: Task) {
        do {
            _ = try store.collection(path).addDocument(from: task)
        } catch {
            fatalError("Error al agregar tarea")
        }
    }
    
    func update(_ task: Task) {
        guard let docId = task.id else {
            return
        }
        do {
            try store.collection(path).document(docId).setData(from: task)
        } catch {
            fatalError("Error al actualizar tarea")
        }
    }
    
    func delete(_ task: Task) {
        guard let docId = task.id else {
            return
        }
        store.collection(path).document(docId).delete() { error in
            if let error = error {
                print("Error en \(error.localizedDescription)")
            }
        }
    }
}
