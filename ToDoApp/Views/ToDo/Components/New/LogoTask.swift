//
//  LogoTask.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 11/09/21.
//

import SwiftUI

struct LogoTask: View {
    var body: some View {
        VStack {
            Text("Crea nueva tarea")
                .font(.largeTitle)
            
            Image("logoTask")
                .resizable()
                .frame(width: 200, height: 225)
                .padding(.bottom, 20)
        }
    }
}

struct LogoTask_Previews: PreviewProvider {
    static var previews: some View {
        LogoTask()
    }
}
