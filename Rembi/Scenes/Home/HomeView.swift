//
//  HomeView.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI
import CoreData

struct HomeView: View {

    var body: some View {
        NavigationView {
            VStack {
                AppBarView()
                ScrollView(.vertical, showsIndicators: false){
                    
                    Spacer(minLength: 30.0)
                    HomeMbtiInfo()
                    Spacer(minLength: 30.0)
                    HomeMbtiView()
                }
            }
        }
    }
}

//AppName
struct AppBarView: View {
    var body: some View {
        Image("applogo")
            .resizable()
            .scaledToFill()
            .frame(height: 20.0)
            .padding(16.0)
    }
}

//Info
struct HomeMbtiInfo: View {
    let addView = AddNewFriendView()
    
    @AppStorage("intpCounter") var intpCounter = 0
    @AppStorage("entpCounter") var entpCounter = 0

    var body: some View {

        Text("MBTI 정보")
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal,16.0)
        //Spacer(minLength: 16.0)
        
        TabView {
            ForEach(MbitiInfo.sample) { info in
                VStack {
                    info.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
//                    Text(info.title)
//                        .lineLimit(1)
//                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }

            
        }
        .tabViewStyle(.page)
        .frame(height: 240.0)

    }

}

//struct MbtiInfoSectionItemView: View {
//    let info : MbitiInfo
//
//    var body: some View {
//        TabView {
//            ForEach(MbitiInfo.sample) { info in
//                info.image
//                    .resizable()
//                    .scaledToFill()
//            }
//
//        }
//        .tabViewStyle(.page)
//    }
//}

//GridView
struct HomeMbtiView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var info: FetchedResults<PeopleInfo>
    
   
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        
        Text("같은 MBTI인 친구들 보기")
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal,16.0)
        
        
            LazyVGrid(columns: adaptiveColumns, spacing: 3){
                ForEach(MbtiTypes.mbtiType) { mbtis in
                    NavigationLink(destination: HomeMbtiDetailView(mbtis: mbtis)) {
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 80, height: 80)
                                .cornerRadius(30)
                                .foregroundColor(mbtis.color)
                            
                            Text(mbtis.name)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium , design: .rounded))
                            
                        }
                    }
                }
            }
            .padding(16.0)
        
    }
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
        


    


