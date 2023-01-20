//
//  PeopleDetailView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/17.
//

import SwiftUI

struct PeopleDetailView: View {
//    @Environment(\.managedObjectContext) var managedObjContext
    
    @ObservedObject var info: PeopleInfo
    
    @State private var showComposer: Bool = false

    
    var body: some View {
        VStack {
            ScrollView {
                    HStack {
                        VStack(alignment: .leading, spacing: 10.0){
                            Text(info.name!)
                                .bold()
                            Text(info.mbti!)
                        }
                        .padding(16.0)
                        Spacer()
                    }
                
            }
        }
    }
}

//struct PeopleDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PeopleDetailView()
//    }
//}
