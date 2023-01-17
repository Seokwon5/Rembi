//
//  AddNewFriendView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct AddNewFriendView: View {
    @EnvironmentObject var store: PeopleInfoStore
    
    @Environment(\.dismiss) var dismiss
    
    @FocusState var focused: Bool
    
    @State private var name: String = ""
    @State private var mbti: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Text("이름").padding()
                    TextEditor(text: $name)
                    .focused($focused)
                    .border(.gray.opacity(0.2),width: 2)
                    Text("mbti").padding()
                    TextEditor(text: $mbti)
                    .focused($focused)
                    .border(.gray.opacity(0.2),width: 2)
                }
            .navigationTitle("새 친구 등록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        store.insert(mbti: mbti, name: name)
                        
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
