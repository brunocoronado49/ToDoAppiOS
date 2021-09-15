//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 10/09/21.
//

import SwiftUI

struct ToDoListView: View {
    @ObservedObject var authViewModel = AuthViewModel()
    @ObservedObject var taskViewModel = TaskViewModel()
    @State private var showCpmpleted = false
    @State private var showForm = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(taskViewModel.oneTaskViewModel.filter{
                        $0.task.isCompleted == showCpmpleted
                    }) { taskVM in
                        NavigationLink(destination: TaskDetail(oneTaskModelView: taskVM)) {
                            TaskCard(oneTaskViewModel: taskVM)
                        }
                    }.onDelete(perform: delete)
                }
                .navigationTitle("Tareas")
                .listStyle(InsetListStyle())
                
                HStack {
                    Button(action: {
                        showForm = true
                    }) {
                        Circle()
                            .fill(Color(hex: 0x82ccdd))
                            .frame(height: 70)
                            .overlay(
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                            )
                            .shadow(radius: 10)
                    }
                    .sheet(isPresented: $showForm) {
                        CreateTask { (createTask) in
                            taskViewModel.add(createTask)
                            showForm = false
                            
                        }
                    }
                }
            }
            .navigationBarItems(trailing: Button("Salir") {
                self.authViewModel.signOut()
            }.foregroundColor(.red))
        }
    }
    
    private func delete(at offset: IndexSet) {
        offset.map {
            taskViewModel.oneTaskViewModel[$0].task
        }.forEach(taskViewModel.delete)
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
