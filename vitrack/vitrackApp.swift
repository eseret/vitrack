//
//  vitrackApp.swift
//  vitrack
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

@main
struct vitrackApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
