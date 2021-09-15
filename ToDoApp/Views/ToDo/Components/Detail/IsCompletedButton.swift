//
//  IsCompletedButton.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 15/09/21.
//

import SwiftUI

struct IsCompletedButton: View {
    @Binding var set: Bool
    
    var body: some View {
        Button(action: {set.toggle()}) {
            Image(systemName: "checkmark.fill")
            foregroundColor(set ? Color.green : Color.gray)
        }
    }
}

struct IsCompletedButton_Previews: PreviewProvider {
    static var previews: some View {
        IsCompletedButton(set: .constant(true))
    }
}
