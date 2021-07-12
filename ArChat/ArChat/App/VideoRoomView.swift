//
//  VideoRoomView.swift
//  ArChat
//
//  Created by Egor Dadugin on 11.07.2021.
//

import SwiftUI

struct VideoRoomView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        NavigationLink(destination: FriendsListPageView()){
            HStack{
                Image(systemName: "plus.circle")
                Text("Invite friend")
                    .font(.body)
                
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }//: BUTTON
        .accentColor(.white)
        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .navigationBarTitle("Video Room")
    }
}

// MARK: - PREVIEW
struct VideoRoomView_Previews: PreviewProvider {
    static var previews: some View {
        VideoRoomView()
    }
}
