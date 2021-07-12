//
//  CreateRoomView.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct CreateRoomView: View {
    var body: some View {
        NavigationLink(destination: VideoRoomView()){
            HStack{
                Image(systemName: "plus.circle")
                Text("Create Room")
                    .font(.body)
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }//: BUTTON
        .accentColor(.white)
    }
}

struct CreateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
