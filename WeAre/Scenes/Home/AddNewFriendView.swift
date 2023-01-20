//
//  AddNewFriendView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct AddNewFriendView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @FocusState var focused: Bool
    
    @State private var name: String = ""
    @State private var mbti: String = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("이름",text: $name)
                    .focused($focused)
                TextField("MBTI", text: $mbti)
                    .focused($focused)
                }
            .navigationTitle("새 친구 등록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        PeopleInfoStore().insert(mbti: mbti, name: name, context: managedObjContext)
                        
                        dismiss()
                    } label: {
                        Text("저장")
                }
            }
        }
               
        }
        
    }
    
    
}

struct AddNewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewFriendView()
    }
}
