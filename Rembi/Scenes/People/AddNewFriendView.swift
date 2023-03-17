//
//  AddNewFriendView.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct AddNewFriendView: View {
    
    
    @State private var tab1 = "E"
    @State private var tab2 = "S"
    @State private var tab3 = "T"
    @State private var tab4 = "J"
    
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @FocusState var focused: Bool
    @State private var showComposer: Bool = false
    @State private var showingAlert = false

    @State private var name: String = ""
    
    var body: some View {
 
        let mbti : String = tab1+tab2+tab3+tab4
        NavigationView {
            Form {
                TextField("이름",text: $name)
                    .focused($focused)
                
                VStack(spacing: 10) {
                    Picker(selection: $tab1, label: Text("")) {
                        Text("E").tag("E")
                        Text("I").tag("I")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab2, label: Text("")) {
                        Text("S").tag("S")
                        Text("N").tag("N")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab3, label: Text("")) {
                        Text("T").tag("T")
                        Text("F").tag("F")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Picker(selection: $tab4, label: Text("")) {
                        Text("J").tag("J")
                        Text("P").tag("P")
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
            }
            .navigationTitle("새 친구 등록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("저장") {
                        if name == "" {
                            self.showingAlert = true
                        }else {
                            PeopleInfoStore().addInfo(tab1: tab1,tab2: tab2,tab3: tab3,tab4: tab4,name: name, mbti: mbti, context: managedObjContext)
                            
                            
                            dismiss()
                        }

                    }
                    .alert("이름을 입력해주세요", isPresented: $showingAlert) {
                        Button("확인", role: .cancel) {}
                    }
                    
                    
                }
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("취소")
                    }
                }
            } //toolbar
            
            
        }

    }
    
}
    
    
    struct AddNewFriendView_Previews: PreviewProvider {
        static var previews: some View {
            AddNewFriendView()
        }
    }
    
    







