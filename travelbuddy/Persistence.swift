//
//  Persistence.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/24.
//

import CoreData

class PersistenceController {
    let container: NSPersistentContainer
    static let shared = PersistenceController()
    @MainActor
    static let preview : PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "travelbuddy")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
