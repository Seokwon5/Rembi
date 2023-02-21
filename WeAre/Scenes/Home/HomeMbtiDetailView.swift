//
//  HomeMbtiDetailView.swift
//  WeAre
//
//  Created by 이석원 on 2023/02/08.
//

import SwiftUI
import CoreData

struct HomeMbtiDetailView: View {
    let mbtis : MbtiTypes
    
    @FetchRequest var fetchRequest: FetchedResults<PeopleInfo>
    
    
    
    var body: some View {
        List(fetchRequest) { info in
            Text(info.name!)
                
            }
            .navigationTitle(mbtis.name)
    }
    
    init(mbtis: MbtiTypes) {
        _fetchRequest = FetchRequest<PeopleInfo>(sortDescriptors: [], predicate: NSPredicate(format: "mbti == %@", mbtis.name))

        self.mbtis = mbtis
        
        
            }
}


