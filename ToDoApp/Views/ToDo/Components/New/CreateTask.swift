//
//  CreateTask.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 13/09/21.
//

import SwiftUI

struct CreateTask: View {
    @State private var title = ""
    @State private var desc = ""
    var addTask: (_ task: Task) -> Void
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                LogoTask()
                                
                TextField("Título", text: $title)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .foregroundColor(.neumorphictextColor)
                    .background(Color.background)
                    .cornerRadius(6)
                    .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
                    .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
                    .padding(.bottom, 20)
                
                TextField("Descripción", text: $desc)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .foregroundColor(.neumorphictextColor)
                    .background(Color.background)
                    .cornerRadius(6)
                    .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
                    .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
                    .lineLimit(6)
                    .padding(.bottom, 20)
                
                Button("Guardar") {
                    let task = Task(task: title, desc: desc, isCompleted: false)
                    addTask(task)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 150, height: 50)
                .background(Color(hex: 0x82ccdd))
                .cornerRadius(10)
                .shadow(radius: 10)
                .disabled(title.isEmpty || desc.isEmpty)
                
                Spacer()
            }
            .padding()
        }
    }
}

//struct CreateTask_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateTask()
//    }
//}
