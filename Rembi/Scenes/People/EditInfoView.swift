//
//  EditInfoView.swift
//  Rembi
//
//  Created by 이석원 on 2023/02/03.
//

import SwiftUI

struct EditInfoView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    let info : PeopleInfo
    
    
    @FocusState var focused: Bool
    @State private var name: String = ""
    @State private var tab1 = ""
    @State private var tab2 = ""
    @State private var tab3 = ""
    @State private var tab4 = ""
    
    @State private var showingAlert = false
    
    
    var body: some View {
        
        let mbti: String = tab1+tab2+tab3+tab4
        
        
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
                    
                        .onAppear {
                            name = info.name!
                            tab1 = info.tab1!
                            tab2 = info.tab2!
                            tab3 = info.tab3!
                            tab4 = info.tab4!
                        }

                }
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("수정 완료") {
                        if name == "" {
                            self.showingAlert = true
                        } else {
                            PeopleInfoStore().editInfo(tab1: tab1,tab2: tab2,tab3: tab3,tab4: tab4, info: info, name: name, mbti: mbti, context: managedObjContext)
                            
                            dismiss()
                        }
                        
                    }
                    .alert("이름을 입력해주세요", isPresented: $showingAlert) {
                        Button("확인", role: .cancel) {}
                    }
                    
                }
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    Button {
//                        dismiss()
//                    } label: {
//                        Text("취소")
//                    }
//                }
            }
            
        }
    }
    
    

    
    
    

        
        
        
    
