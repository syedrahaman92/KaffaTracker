//
//  KaffaTrackerApp.swift
//  KaffaTracker
//
//  Created by Syed Rahaman on 11/06/26.
//

import SwiftUI
import CoreData

@main
struct KaffaTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
