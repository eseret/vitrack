//
//  vitrackApp.swift
//  vitrack
//
//  Created by Scholar on 7/18/23
//

import SwiftUI
var streak = 0
var hStreak = 0
var exercises = [
    "head":27.0, "shoulders":7.0,"stomach":3.0,"wrist":0.0,
    "quads":0.0,"calves":8.0,"ankles":0.0,"default":0.0
]
var totalExcersies = 43.0

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
