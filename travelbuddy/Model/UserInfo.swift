//
//  Member .swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/28.
//

import SwiftUI
import Foundation
import CoreData

final class ModelData : ObservableObject {
    let container : NSPersistentContainer = NSPersistentContainer(name: "travelbuddy") // Core Data 
    @Published var exception : Exception? = nil
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load : \(error.localizedDescription)")
            }
        }
    }
}
struct AuthenticationError : LocalizedError {
    
}
struct MemberIdentifiy : Identifiable {
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


extension MemberIdentifiy : NSFetchRequestResult {
    
}



