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
        MbitiInfo(image: Image("mbtiInfo3"), title: "MBTI 간단정리"),
        MbitiInfo(image: Image("mbtiInfo2"), title: "E vs I")
    ]
}
