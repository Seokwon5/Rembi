//
//  PeopleView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct PeopleView: View {
    @EnvironmentObject var store: PeopleInfoStore
    
    @State private var showComposer: Bool = false

    var body: some View {
        NavigationView{
            List(store.list) { info in
                NavigationLink {
                    PeopleDetailView(info: info)
                } label: {
                    PeopleCell(info: info)
                    }

            }
            .listStyle(.plain)
            .navigationTitle("친구 목록")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "person.fill.badge.plus")
                }
                
            }
            .sheet(isPresented: $showComposer) {
                AddNewFriendView()
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
            .environmentObject(PeopleInfoStore())
    }
}


