//
//  PeopleInfoStore.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/11.
//

import Foundation
import CoreData

class PeopleInfoStore : ObservableObject{
    let container = NSPersistentContainer(name:"PeopleInfoModel")
    

    
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
            print("We could not save the data.. \(error)")
        }
    }
    
    func addInfo(tab1: String,tab2: String,tab3: String,tab4: String, name: String, mbti: String, context: NSManagedObjectContext) {
        let info = PeopleInfo(context: context)
        info.id = UUID()
        info.date = Date()
        info.name = name
        info.mbti = mbti
        info.tab1 = tab1
        info.tab2 = tab2
        info.tab3 = tab3
        info.tab4 = tab4

        save(context: context)
    }
    
   

    
    func editInfo(tab1:String,tab2:String,tab3:String,tab4:String,info: PeopleInfo,name: String, mbti: String, context: NSManagedObjectContext){
        info.name = name
        info.mbti = mbti
        info.date = Date()
        info.tab1 = tab1
        info.tab2 = tab2
        info.tab3 = tab3
        info.tab4 = tab4
        

        
        save(context: context)
    }
        
    func delete(info: PeopleInfo){
            
        container.viewContext.delete(info)
            
        do {
            try container.viewContext.save()
           } catch {
            container.viewContext.rollback()
            print("Failed to save context \(error)")
        }
    }
    
        
}
