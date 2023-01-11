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
            PeopleInfo(mbti: "intp", name: "lee"),
            PeopleInfo(mbti: "entp", name: "kim"),
            PeopleInfo(mbti: "infj", name: "jang")
        ]
    }
    
    func insert(post: String) {
        list.insert(PeopleInfo(mbti: post, name: post), at: 0)
    }
    
    func update(post: PeopleInfo?, mbti: String, name:String) {
        guard let post = post else {
            return
        }
        
        post.name = name
        post.mbti = mbti
    }
    
    func delete(post: PeopleInfo) {
        list.removeAll {
            $0.id == post.id
        }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
