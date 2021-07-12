//
//  RegisterPageView.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct RegisterPageView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 250){
            Text("Registration")
                .font(.headline)
                .fontWeight(.bold)
            RegisterView()
        }//: VSTACK
        .position(x: 207, y: 200)
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct RegisterPageView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPageView()
    }
}
