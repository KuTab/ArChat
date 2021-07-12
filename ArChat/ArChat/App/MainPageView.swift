//
//  MainPageView.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct MainPageView: View {
    // MARK: - PROPERTIES
    @AppStorage ("userName") var userName: String = ""
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            VStack{
                Text(userName)
                CreateRoomView()
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
            }
        }
    }
}

// MARK: - PREVIEW
struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
