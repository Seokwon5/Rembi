//
//  AddNewFriendView.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import SwiftUI

struct AddNewFriendView: View {

    var body: some View { 
            Text("plus")
            .navigationTitle("친구 추가")
            .toolbar {
                Button(action: {}, label: {
                    Text("저장")
                        .tint(.green)
                })
            }
    }
}

struct AddNewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewFriendView()
    }
}
