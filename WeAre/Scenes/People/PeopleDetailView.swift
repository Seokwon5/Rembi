//
//  PeopleDetailView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/17.
//

import SwiftUI


struct PeopleDetailView: View {
    
    @StateObject var info = PeopleInfo()
    
    @State private var showComposer: Bool = false
    
    
    var body: some View {
        List() {
            VStack(alignment: .leading, spacing: 10.0){

                Text(info.mbti ?? "")
    
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "square.and.pencil.circle")
                    }
                }
            }
            .sheet(isPresented: $showComposer) {
                EditInfoView(info: info)
            }
        }
        .navigationTitle(info.name ?? "")
    }
}
