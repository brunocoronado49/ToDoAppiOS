//
//  LogoAuthView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 10/09/21.
//

import SwiftUI

struct LogoAuthView: View {
    var body: some View {
        VStack {
            Text("ToDo App")
                .font(.largeTitle)
            
            Image("logoAuth")
                .resizable()
                .frame(width: 200, height: 125)
                .padding(.bottom, 20)
        }
    }
}

struct LogoAuthView_Previews: PreviewProvider {
    static var previews: some View {
        LogoAuthView()
    }
}
