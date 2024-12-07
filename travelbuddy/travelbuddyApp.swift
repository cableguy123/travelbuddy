//
//  travelbuddyApp.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/24.
//

import SwiftUI

@main
struct travelbuddyApp: App {
    var dataController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
