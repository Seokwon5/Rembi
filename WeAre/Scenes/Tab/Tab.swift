//
//  Tab.swift
//  WeAre
//
//  Created by 이석원 on 2023/01/09.
//

import SwiftUI

enum Tab {
    case home
    case people
    
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .people: return Text("People")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .people: return Image(systemName: "person.fill")
        }
    }
}
