//
//  HomeHeaderView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @State private var showComposer: Bool = false
    
    
    var body: some View {
        HStack{
            Image(systemName: "person.2.wave.2.fill")
        }
        .navigationTitle("WEARE")
        .toolbar {
            Button {
                showComposer = true
            } label: {
                Image(systemName: "person.fill.badge.plus")
            }
        }
        .sheet(isPresented: $showComposer) {
            AddNewFriendView()
                .padding(16.0)
            
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
