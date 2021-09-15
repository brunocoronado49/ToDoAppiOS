//
//  TaskCard.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 11/09/21.
//

import SwiftUI

struct TaskCard: View {
    var oneTaskViewModel: OneTaskViewModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hex: 0x82ccdd))
            .frame(height: 120)
            .overlay(
                ZStack {
                    Spacer()
                    Text(oneTaskViewModel.task.task)
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()

                    if oneTaskViewModel.task.isCompleted {
                        Image(systemName: "heart.fill")
                    }
                }
                .padding()
            )
            .shadow(radius: 15)
    }
}
