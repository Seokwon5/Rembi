//
//  PeopleInfoStore.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/11.
//

import Foundation
import CoreData

class PeopleInfoStore: ObservableObject {
    let container = NSPersistentContainer(name: "PeopleInfoModel")

    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    

    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data Saved!")
        } catch {
            print("We could not save the data..")
        }
    }
    
    
    func insert(mbti: String, name: String, context: NSManagedObjectContext) {
        let info = PeopleInfo(context: context)
        info.id = UUID()
        info.name = name
        info.mbti = mbti
        
        save(context: context)
        
    }
    
    func update(info: PeopleInfo ,mbti: String, name:String, context: NSManagedObjectContext) {
        info.name = name
        info.mbti = mbti
        
        save(context: context)
    }
 
}
