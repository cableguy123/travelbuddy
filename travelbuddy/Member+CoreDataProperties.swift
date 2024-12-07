//
//  Member+CoreDataProperties.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/11/04.
//
//

import Foundation
import CoreData


extension Member {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Member> {
        return NSFetchRequest<Member>(entityName: "Member")
    }

    @NSManaged public var email: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var password: String?

}

extension Member : Identifiable {

}
