//
//  FriendsListPage.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct FriendsListPageView: View {
    // MARK: - PROPERTIES
    var users: [User] = usersData
    
    // MARK: - BODY
    var body: some View {
        VStack{
            Text("Friends")
                .font(.headline)
                .fontWeight(.bold)
            List{
                ForEach(users[0...1]){
                    item in
                    NavigationLink(destination: VideoRoomView().navigationBarBackButtonHidden(true)){
                        UserRowView(user: item)
                    }
                }
            }
            .padding(.vertical, 4)
        }
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW
struct FriendsListPageView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListPageView()
    }
}
