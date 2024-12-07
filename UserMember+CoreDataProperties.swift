//
//  UserMember+CoreDataProperties.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/11/06.
//
//

import Foundation
import CoreData


extension UserMember {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserMember> {
        return NSFetchRequest<UserMember>(entityName: "UserMember")
    }

    @NSManaged public var email: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var password: String?

}

extension UserMember : Identifiable {

}
