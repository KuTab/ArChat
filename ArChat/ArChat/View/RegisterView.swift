//
//  RegisterView.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

struct RegisterView: View {
    // MARK: - PROPERTIES
    //@State private var username: String = ""
    @AppStorage ("isRegistered") var isRegistered: Bool = false
    @AppStorage ("userName") var userName: String = ""
    
    // MARK: - BODY
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.crop.circle")
                    .imageScale(.large)
                    .foregroundColor(.white)
                TextField("Enter username", text: $userName)
                    .frame(minWidth: 0, maxWidth: 200, minHeight:0, maxHeight: 30, alignment: .center)
                    .font(.title2)
                    .cornerRadius(10)
            }//: HSTACK
            Button(action: {
                isRegistered = true;
            }){
                HStack{
                    Image(systemName: "checkmark.square")
                    Text("Confirm")
                        .font(.body)
                    
                }//: HSTACK
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            }//: BUTTON
            .accentColor(.white)
            .disabled(self.userName.isEmpty)
            
            
        }//: VSTACK
        .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 120, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
    }
}

// MARK: - PREVIEW
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
