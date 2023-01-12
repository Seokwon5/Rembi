//
//  WeAreApp.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/05.
//

import SwiftUI

@main
struct WeAreApp: App {
    @StateObject var store = PeopleInfoStore()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(store)
        }
    }
}
