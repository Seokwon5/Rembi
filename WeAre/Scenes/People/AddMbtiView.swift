//
//  AddMbtiView.swift
//  WeAre
//
//  Created by 이석원 on 2023/02/07.
//

import SwiftUI

struct AddMbtiView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext

    @State private var tab1 = "E"
    @State private var tab2 = "N"
    @State private var tab3 = "T"
    @State private var tab4 = "P"
    
   
    var body: some View {
        
        var mbti: String = tab1+tab2+tab3+tab4
        
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
    }


struct AddMbtiView_Previews: PreviewProvider {
    static var previews: some View {
        AddMbtiView()
    }
}
