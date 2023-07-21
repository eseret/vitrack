//
//  vitrackApp.swift
//  vitrack
//
//  Created by Scholar on 7/18/23
//

import SwiftUI
var streak = 0
var hStreak = 0
var totalExercises = 29.0

@main
struct vitrackApp: App {
    let persistenceController = PersistenceController.shared
//    @State var exercises = [
//        "head":0.0, "shoulders":0.0,"stomach":0.0,"wrist":0.0,
//        "quads":0.0,"calves":0.0,"ankles":0.0,"default":0.0
//    ]
//    shoulderScreen(workout: $exercises)
//    
//    @State var shoulderCountersTemp = 0.0

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
