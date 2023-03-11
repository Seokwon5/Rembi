//
//  MbitiInfo.swift
//  Rembi
//
//  Created by 이석원 on 2023/03/11.
//

import SwiftUI

struct MbitiInfo: Identifiable {
    let id = UUID()
    
    let image : Image
    let title : String
    
    static let sample: [MbitiInfo] = [
        MbitiInfo(image: Image("entj"), title: "나는 어떤 성격일까?"),
        MbitiInfo(image: Image("entj"), title: "E vs I")
    ]
}
