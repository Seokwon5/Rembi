//
//  MbtiTypes.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

struct MbtiTypes: Identifiable {
    var color: Color
    var name: String
    let description: String
    let id = UUID()
    

    static let mbtiType: [MbtiTypes] = [
        MbtiTypes(color: Color(.purple), name: "ISTJ",description: "소금형"),
        MbtiTypes(color: Color(.blue), name: "ISFJ",description: "권력형"),
        MbtiTypes(color: Color(.brown), name: "INFJ",description: "예언자형"),
        MbtiTypes(color: Color(.darkGray), name: "INTJ",description: "과학자형"),
        MbtiTypes(color: Color(.systemPurple), name: "ISTP",description: "백과사전형"),
        MbtiTypes(color: Color(.systemBlue), name: "ISFP",description: "성인군자형"),
        MbtiTypes(color: Color(.systemBrown), name: "INFP",description: "잔다르크형"),
        MbtiTypes(color: Color(.gray), name: "INTP",description: "아이디어형"),
        MbtiTypes(color: Color(.systemGreen), name: "ESTP",description: "활동가형"),
        MbtiTypes(color: Color(.systemTeal), name: "ESFP",description: "사교형"),
        MbtiTypes(color: Color(.red), name: "ENFP",description: "스파크형"),
        MbtiTypes(color: Color(.orange), name: "ENTP",description: "발명가형"),
        MbtiTypes(color: Color(.green), name: "ESTJ",description: "사업가형"),
        MbtiTypes(color: Color(.systemMint), name: "ESFJ",description: "친선도모형"),
        MbtiTypes(color: Color(.systemRed), name: "ENFJ",description: "언변능숙형"),
        MbtiTypes(color: Color(.systemOrange), name: "ENTJ",description: "지도자형")
        
    ]

    init(color: Color, name: String, description: String) {
        self.color = color
        self.name = name
        self.description = description
    }

}
