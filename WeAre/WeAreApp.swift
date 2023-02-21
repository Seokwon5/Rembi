//
//  WeAreApp.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/05.
//

import SwiftUI
import CoreData

@main
struct WeAreApp: App {
    @StateObject private var peopleInfoStore = PeopleInfoStore()
    

    var body: some Scene {
        WindowGroup {
            MainTabView().environment(\.managedObjectContext, peopleInfoStore.container.viewContext)
            
            
              
        }
    }
}



