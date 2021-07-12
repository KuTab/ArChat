//
//  UserRowView.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct UserRowView: View {
    // MARK: - PROPERTIES
    var user: User
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Image(systemName: "person.circle")
            Text(user.name)
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(user: usersData[0])
            .previewLayout(.sizeThatFits)
    }
}
