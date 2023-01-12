//
//  PeopleCell.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/12.
//

import SwiftUI

struct PeopleCell: View {
    @ObservedObject var memo: PeopleInfo
    
    var body: some View {
        HStack {
            Text(memo.name)
                .font(.title3)
                .lineLimit(1)
            Spacer()
            Text(memo.mbti)
                .font(.caption)
        }
    }
}

struct PeopleCell_Previews: PreviewProvider {
    static var previews: some View {
        PeopleCell(memo: PeopleInfo(mbti: "intp", name: "정우성"))
    }
}
