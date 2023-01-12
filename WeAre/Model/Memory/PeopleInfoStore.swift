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
            PeopleInfo(mbti: "entp", name: "이병헌"),
            PeopleInfo(mbti: "infj", name: "박보영")
        ]
    }
    
    func insert(memo: String) {
        list.insert(PeopleInfo(mbti: memo, name: memo), at: 0)
    }
    
    func update(memo: PeopleInfo?, mbti: String, name:String) {
        guard let memo = memo else {
            return
        }
        
        memo.name = name
        memo.mbti = mbti
    }
    
    func delete(memo: PeopleInfo) {
        list.removeAll {
            $0.id == memo.id
        }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
