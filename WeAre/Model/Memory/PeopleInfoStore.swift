//
//  PeopleInfoStore.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import Foundation

class PeopleInfoStore: ObservableObject {
    @Published var list: [PeopleInfo]
    
    
    
    init() {
        list = [
            PeopleInfo(mbti: "intp", name: "이석원"),
            PeopleInfo(mbti: "entp", name: "김민규"),
            PeopleInfo(mbti: "infj", name: "한승주")
        ]
    }
    
    func insert(mbti: String, name: String) {
        list.insert(PeopleInfo(mbti: mbti, name: name), at: 0)
    }
    
    func update(info: PeopleInfo?, mbti: String, name:String) {
        guard let info = info else {
            return
        }
        
        info.name = name
        info.mbti = mbti
    }
    
    func delete(info: PeopleInfo) {
        list.removeAll {
            $0.id == info.id
        }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
