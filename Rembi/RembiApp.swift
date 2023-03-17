//
//  RembiApp.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/05.
//

import SwiftUI
import CoreData

@main
struct RembiApp: App {
    @StateObject private var peopleInfoStore = PeopleInfoStore()
    

    var body: some Scene {
        WindowGroup {
            SplashView().environment(\.managedObjectContext, peopleInfoStore.container.viewContext)
            
     
                
            
              
        }
    }
}



