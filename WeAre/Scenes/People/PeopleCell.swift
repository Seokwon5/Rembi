//
//  PeopleCell.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/12.
//

import SwiftUI

struct PeopleCell: View {
    @ObservedObject var info: PeopleInfo
    
    var body: some View {
        HStack {
            Text(info.name)
                .font(.title3)
                .lineLimit(1)
            Text(info.mbti)
                .font(.caption)
            Spacer()
        }
    }
}

struct PeopleCell_Previews: PreviewProvider {
    static var previews: some View {
        PeopleCell(info: PeopleInfo(mbti: "intp", name: "정우성"))
    }
}
