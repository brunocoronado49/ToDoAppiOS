//
//  LogoDetail.swift
//  ToDoApp
//
//  Created by Bruno Coronado on 13/09/21.
//

import SwiftUI

struct LogoDetail: View {
    var body: some View {
        VStack {
            Image("logoDetail")
                .resizable()
                .frame(width: 150, height: 200)
                .padding(.bottom, 20)
        }
    }
}

struct LogoDetail_Previews: PreviewProvider {
    static var previews: some View {
        LogoDetail()
    }
}
