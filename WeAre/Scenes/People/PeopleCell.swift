//
//  PeopleCell.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/12.
//

import SwiftUI

struct PeopleCell: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name, order: .reverse)]) var info: FetchedResults<PeopleInfo>
    
    var body: some View {
        ForEach(info) { info in
            HStack {
                    Text(info.name!)
                        .font(.title3)
                        .lineLimit(1)
                    Text(info.mbti!)
                        .font(.caption)
                    Spacer()
            }
        }
    }
}

struct PeopleCell_Previews: PreviewProvider {
    static var previews: some View {
        PeopleCell()
    }
}
