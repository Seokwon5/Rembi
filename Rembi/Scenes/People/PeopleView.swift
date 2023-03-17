//
//  PeopleView.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI
import CoreData

struct PeopleView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    
    @State private var showComposer: Bool = false
    @State private var sortType: Int = 0
    @State private var sortDescripter: NSSortDescriptor = NSSortDescriptor(keyPath: \PeopleInfo.date, ascending: false)
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $sortType, label: Text("Sort")) {
                    Text("등록순").tag(0)
                    Text("이름순").tag(1)
                    Text("성격순").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .onChange(of: sortType) { value in
                        sortType = value
                        
                        if sortType == 0 {
                            sortDescripter = NSSortDescriptor(keyPath: \PeopleInfo.date, ascending: false)
                        }else if sortType == 1 {
                            sortDescripter = NSSortDescriptor(keyPath: \PeopleInfo.name, ascending: true)
                        }else {
                            sortDescripter = NSSortDescriptor(keyPath: \PeopleInfo.mbti, ascending: true)
                        }
                        
                    }
                ListView(sortDescripter: sortDescripter)
            }
            .navigationTitle("친구 목록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "person.fill.badge.plus")
                            .foregroundColor(.white)
                            .frame(width: 60, height: 35)
                            .background(Color(.darkGray))
                            .cornerRadius(10)
                    }
                }
            }
            
            .sheet(isPresented: $showComposer) {
                AddNewFriendView()
            }
            
        }
        
    }
    
}
struct ListView: View {
    @FetchRequest var info: FetchedResults<PeopleInfo>
    @Environment(\.managedObjectContext) var viewContext
    
    init(sortDescripter: NSSortDescriptor) {
        let request: NSFetchRequest<PeopleInfo> = PeopleInfo.fetchRequest()
        request.sortDescriptors = [sortDescripter]
        _info = FetchRequest<PeopleInfo>(fetchRequest: request)
    }
    
    
    var body: some View {
        List {
            ForEach(info) { info in
                HStack {
                    NavigationLink {
                        EditInfoView(info: info)
                    } label: {
                        HStack {
                            Text(info.name ?? "")
                                .font(.system(size: 20, weight: .medium , design: .rounded))
                                .lineLimit(1)
                            Spacer()
                            Text(info.mbti ?? "")
                                .font(.system(size: 25, weight: .medium , design: .rounded))
                                .frame(width: 75.0)
                                .padding(.vertical,10.0)
                                .border(Color(.gray))
                                .cornerRadius(7.0)
                        }
                    }
                }
                
            }
            .onDelete(perform: deleteInfo)
        }
        .listStyle(.plain)
        
    }
    
    private func deleteInfo(offsets: IndexSet) {
        withAnimation {
            offsets.map { info[$0] }.forEach(viewContext.delete)
            
            PeopleInfoStore().save(context: viewContext)
        }
    }
    
}



struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}


