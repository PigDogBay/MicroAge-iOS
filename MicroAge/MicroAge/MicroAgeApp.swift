//
//  MicroAgeApp.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

@main
struct MicroAgeApp: App {
    @StateObject private var coordinator = Coordinator()
    var body: some Scene {
        WindowGroup {
            RootView()
                .statusBar(hidden: true)
                .environmentObject(coordinator)
        }
    }
}
