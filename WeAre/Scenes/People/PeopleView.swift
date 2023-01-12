//
//  PeopleView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct PeopleView: View {
    @EnvironmentObject var store: PeopleInfoStore
 

    var body: some View {
        NavigationView{
            List(store.list) { memo in
                PeopleCell(memo: memo)
                
            }
            .listStyle(.plain)
            .navigationTitle("친구 목록")
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
            .environmentObject(PeopleInfoStore())
    }
}


