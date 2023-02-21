//
//  PeopleView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct PeopleView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var info: FetchedResults<PeopleInfo>
    
    
    @State private var showComposer: Bool = false
    

    var body: some View {
        NavigationView{
            List{
                ForEach(info) { info in
                    HStack { 
                        NavigationLink {
                            PeopleDetailView(info: info)
                        } label: {
                            HStack {
                                Text(info.name ?? "")
                                    .font(.title3)
                                    .lineLimit(1)
                                Text(info.mbti ?? "")
                                    .font(.caption)
                                Spacer()
                            }
                        }
                    }
                }
                .onDelete(perform: deleteInfo)
            }
            .listStyle(.plain)
            .navigationTitle("친구 목록")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "person.fill.badge.plus")
                            .foregroundColor(.white)
                            .frame(width: 60)
                            .frame(height: 45)
                            .background(Color(.black))
                            .cornerRadius(10)
                        
                    }
                }
            }
            .sheet(isPresented: $showComposer) {
                AddNewFriendView()
            }
            
            
        }
        
    }
    
    private func deleteInfo(offsets: IndexSet) {
        withAnimation {
            offsets.map { info[$0] }.forEach(managedObjContext.delete)
            
            PeopleInfoStore().save(context: managedObjContext)
        }
    }
}



struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}


