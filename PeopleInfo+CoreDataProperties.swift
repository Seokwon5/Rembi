//
//  PeopleInfo+CoreDataProperties.swift
//  Rembi
//
//  Created by 이석원 on 2023/01/18.
//
//

import Foundation
import CoreData


extension PeopleInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PeopleInfo> {
        return NSFetchRequest<PeopleInfo>(entityName: "PeopleInfo")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var mbti: String?
    @NSManaged public var date: Date?
    @NSManaged public var tab1: String?
    @NSManaged public var tab2: String?
    @NSManaged public var tab3: String?
    @NSManaged public var tab4: String?

}

extension PeopleInfo : Identifiable {

}
