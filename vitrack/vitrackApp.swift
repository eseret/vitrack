//
//  vitrackApp.swift
//  vitrack
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
var streak = 0
var hStreak = 0
var exercises = [
    "head":15, "shoulders":0,"stomach":0,"wrist":0,
    "quads":0,"calves":0,"ankles":5,"default":0
]
var totalExcersies = 20

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
