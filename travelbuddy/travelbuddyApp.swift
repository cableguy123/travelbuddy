//
//  travelbuddyApp.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/24.
//

import SwiftUI

@main
struct travelbuddyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
