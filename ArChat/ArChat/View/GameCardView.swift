//
//  GameCardView.swift
//  ArChat
//
//  Created by Egor Dadugin on 13.07.2021.
//

import SwiftUI

struct GameCardView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack{
            Image("QuizLogo")
                .resizable()
                .scaledToFit()
                .shadow(radius: 8, x: 6, y: 8)
            
            Text("QUIZ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            
        }//: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(40)
        .padding(20)
    }
}

// MARK: - PREVIEW
struct GameCardView_Previews: PreviewProvider {
    static var previews: some View {
        GameCardView()
    }
}
