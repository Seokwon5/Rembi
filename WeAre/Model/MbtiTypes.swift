//
//  MbtiTypes.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct MbtiTypes: Identifiable {
    let image: Image
    let name: String
    
    let id = UUID()
   
    static let mbtiType: [MbtiTypes] = [
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTP"),
        MbtiTypes(image: Image("intp"), name: "ESTJ"),
        MbtiTypes(image: Image("intp"), name: "ESTJ"),
        MbtiTypes(image: Image("intp"), name: "ISFJ"),
        MbtiTypes(image: Image("intp"), name: "ISTP"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ"),
        MbtiTypes(image: Image("intp"), name: "ISTJ")
        
    ]

}
