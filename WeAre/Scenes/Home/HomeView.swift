//
//  HomeView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var info: FetchedResults<PeopleInfo>
   
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 3){
                    ForEach(MbtiTypes.mbtiType) { mbtis in
                        NavigationLink(destination: HomeMbtiDetailView(mbtis: mbtis)) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(30)
                                
                                Text(mbtis.name)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .medium , design: .rounded))
                            }
                        }
                        
                    }
                    
                }
            }
            .padding()
            .navigationTitle("MBTI")
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
        


    


