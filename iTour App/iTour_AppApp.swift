//
//  iTour_AppApp.swift
//  iTour App
//
//  Created by kiyegga francis on 2025-02-13.
//

import SwiftUI
import SwiftData

@main
struct iTour_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
