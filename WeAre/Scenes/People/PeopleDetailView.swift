//
//  PeopleDetailView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/17.
//

import SwiftUI

struct PeopleDetailView: View {
    @ObservedObject var info: PeopleInfo
    
    @EnvironmentObject var store : PeopleInfoStore
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Text(info.name)
                    Text(info.mbti)
                }
            }
        }
    }
}

struct PeopleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleDetailView(info: PeopleInfo(mbti: "INTP", name: "이석원"))
            .environmentObject(PeopleInfoStore())
    }
}
