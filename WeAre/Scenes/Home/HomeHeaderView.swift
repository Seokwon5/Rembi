//
//  HomeHeaderView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            Text("WeAre")
                .font(.largeTitle)
            Spacer()
            NavigationLink(destination: AddNewFriendView(), label: {
                Image(systemName: "person.fill.badge.plus")
                    .font(.system(size: 22.0))
            })
        }.padding(16.0)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
