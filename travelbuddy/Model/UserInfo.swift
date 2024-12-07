//
//  Member .swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/28.
//

import SwiftUI
import Foundation
import CoreData

final class ModelData {
    var container : PersistenceController
    var exception: Exception? = nil
    init() {
        container = PersistenceController(inMemory: false)
    }
}

struct AuthenticationError : LocalizedError {
    
}
struct UserInfo : Identifiable {
    let id : UUID
    var name : String
    var email : String
    var password : String
    init(id: UUID, name: String,email: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }
}





