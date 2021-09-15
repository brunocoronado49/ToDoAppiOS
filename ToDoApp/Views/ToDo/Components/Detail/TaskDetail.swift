//
//  TaskDetail.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 11/09/21.
//

import SwiftUI

struct TaskDetail: View {
    var oneTaskModelView: OneTaskViewModel
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ScrollView {
                    LogoDetail()
                    
                    VStack {
                        Text(oneTaskModelView.task.task)
                            .bold()
                            .font(.title)
                            .padding(.bottom, 10)
                        
                        Spacer()
                        
                        if oneTaskModelView.task.isCompleted == false {
                            Text("Pendiente")
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                    }
                    
                    Text(oneTaskModelView.task.desc)
                        .padding(.bottom, 20)
                }
            }
            .padding()
        }
    }
}

