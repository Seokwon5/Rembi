//
//  AddNewFriendView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct AddNewFriendView: View {
    
    @State private var tab1 = "E"
    @State private var tab2 = "N"
    @State private var tab3 = "T"
    @State private var tab4 = "P"
    
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @FocusState var focused: Bool
    @State private var showComposer: Bool = false
    
    
    @State private var name: String = ""
    @State private var mbti: String = "ENTP"
   
    
    var body: some View {
        
        var mbti: String = tab1+tab2+tab3+tab4
        
        NavigationView {
            Form {
                TextField("이름",text: $name)
                    .focused($focused)
                
                Text(mbti)
                
                VStack(spacing: 10) {
                    Picker(selection: $tab1, label: Text("")) {
                                Text("E").tag("E")
                                Text("I").tag("I")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab2, label: Text("")) {
                                Text("N").tag("N")
                                Text("S").tag("S")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab3, label: Text("")) {
                                Text("T").tag("T")
                                Text("F").tag("F")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab4, label: Text("")) {
                                Text("P").tag("P")
                                Text("J").tag("J")
                    }.pickerStyle(SegmentedPickerStyle())

                }
                

            }
            .navigationTitle("새 친구 등록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("저장") {
                        PeopleInfoStore().addInfo(name: name, mbti: mbti, context: managedObjContext)
                        
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
    

    
    struct AddNewFriendView_Previews: PreviewProvider {
        static var previews: some View {
            AddNewFriendView()
        }
    }
    
    
}






