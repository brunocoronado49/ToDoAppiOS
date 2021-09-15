//
//  OneTaskViewModel.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 13/09/21.
//

import Foundation
import Combine

final class OneTaskViewModel: ObservableObject, Identifiable {
    private let taskRepo = TaskRepository()
    @Published var task: Task
    private var cancellables: Set<AnyCancellable> = []
    var id = ""
    
    init(task: Task) {
        self.task = task
        $task
            .compactMap{$0.id}
            .assign(to: \.id, on: self)
            .store(in: &cancellables)
    }
}
