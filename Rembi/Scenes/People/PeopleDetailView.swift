//
//  PeopleDetailView.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/17.
//

import SwiftUI


struct PeopleDetailView: View {
    
    @StateObject var info = PeopleInfo()
    @State private var showComposer: Bool = false

    var body: some View {
       
            
        VStack {
            Image("entj")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
        }
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.white)
                            .frame(width: 60, height: 35)
                            .background(Color(.darkGray))
                            .cornerRadius(10)
                    }
                }
            }
            
            .sheet(isPresented: $showComposer) {
                EditInfoView(info: info)
            }
        
        .navigationTitle(info.name ?? "")
        .navigationBarTitleDisplayMode(.large)
    }
}
    

