//
//  HomeMbtiTypes.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct HomeMbtiTypes: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(MbtiTypes.mbtiType) { mbti in
                NavigationLink {
                    HomeMbtiTypesDetail()
                } label: {
                    HomeMbtiItemView(mbtiType: mbti)
                }
            }
        }
        .padding(16.0)
    }
}

struct HomeMbtiItemView: View {
    let mbtiType: MbtiTypes
    
    var body: some View {
        VStack {
            mbtiType.image
                .resizable()
                .frame(width: 100.0, height: 50.0)
            Text(mbtiType.name)
                .font(.caption)
        }
    }
}

struct HomeMbtiTypes_Previews: PreviewProvider {
    static var previews: some View {
        HomeMbtiTypes()
    }
}


