//
//  HomeView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            VStack {
                HomeHeaderView()
                ScrollView(.vertical) {
                    HomeMbtiTypes()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
