//
//  MainTabView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/05.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("people")
                .tabItem {
                    Tab.people.imageItem
                    Tab.people.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
