//
//  ArChatApp.swift
//  ArChat
//
//  Created by Egor Dadugin on 10.07.2021.
//

import SwiftUI

@main
struct ArChatApp: App {
    // MARK: - PROPERTIES
    @AppStorage ("isRegistered") var isRegistered: Bool = false
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isRegistered{
                MainPageView()
            } else {
                RegisterPageView()
            }
        }
    }
}
