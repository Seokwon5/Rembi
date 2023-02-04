//
//  EditInfoView.swift
//  WeAre
//
//  Created by 이석원 on 2023/02/03.
//

import SwiftUI

struct EditInfoView: View {

    var info : FetchedResults<PeopleInfo>.Element
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    
    @FocusState var focused: Bool
    
    @State private var name: String = ""
    @State private var mbti: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("이름",text: $name)
                    .onAppear {
                        name = info.name ?? ""
                    }
                    .focused($focused)
                
                TextField("MBTI", text: $mbti)
                    .onAppear {
                        mbti = info.mbti ?? ""
                    }
                    .focused($focused)
            }
            .navigationTitle("수정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("저장") {
                        PeopleInfoStore().editInfo(info: info, name: name, mbti: mbti, context: managedObjContext)
                       
                        dismiss()
                    }
                }
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("취소")
                    }
                }
            }
            
        }
        
    }
    
    
}
