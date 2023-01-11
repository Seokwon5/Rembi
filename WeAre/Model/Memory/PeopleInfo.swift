//
//  PeopleInfo.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import Foundation
import SwiftUI

class PeopleInfo: Identifiable, ObservableObject { //indenti = data를 list에 쉽게 저장. observable = 데이터 수정시 뷰 자동 업데이트
    let id: UUID
    @Published var mbti: String
    @Published var name: String
    
    init(mbti: String, name: String) {
        id = UUID()
        self.mbti = mbti
        self.name = name
    }
    
}
