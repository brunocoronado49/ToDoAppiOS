//
//  TaskViewModel.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 08/09/21.
//

import Foundation
import Combine
import Firebase

class TaskViewModel: ObservableObject {
    @Published var taskRepo = TaskRepository()
    @Published var oneTaskViewModel: [OneTaskViewModel] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        taskRepo.$task
            .map { tasks in
                tasks.map(OneTaskViewModel.init)
            }
            .assign(to: \.oneTaskViewModel, on: self)
            .store(in: &cancellables)
    }
    
    func add(_ task: Task) {
        taskRepo.add(task)
    }
    
    func update(_ task: Task) {
        taskRepo.update(task)
    }
    
    func delete(_ task: Task) {
        taskRepo.delete(task)
    }
    
    
}
