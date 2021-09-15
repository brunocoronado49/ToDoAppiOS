//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 11/09/21.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            FormRegisterView()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
