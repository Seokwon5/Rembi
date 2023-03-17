//
//  HomeMbtiDetailView.swift
//  Rembi
//
//  Created by 이석원 on 2023/02/08.
//

import SwiftUI
import CoreData

struct HomeMbtiDetailView: View {
    let mbtis : MbtiTypes
    
    @FetchRequest var fetchRequest: FetchedResults<PeopleInfo>
    

    var body: some View {
        
        Text(mbtis.description)
            .font(.system(size: 15, weight: .medium , design: .rounded))
            .frame(width: 75.0)
            .padding(.vertical,10.0)
        List(fetchRequest) { info in
            Text(info.name!)
                .font(.system(size: 20, weight: .medium , design: .rounded))
            }
            .navigationTitle("\(mbtis.name) 친구 목록")
    }
    
    init(mbtis: MbtiTypes) {
        _fetchRequest = FetchRequest<PeopleInfo>(sortDescriptors:[SortDescriptor(\.date, order: .reverse)], predicate: NSPredicate(format: "mbti == %@", mbtis.name))

        self.mbtis = mbtis
        
       
       
            }

}


