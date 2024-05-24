//
//  SimpleFitnessApp.swift
//  SimpleFitness
//
//  Created by Frank Le-Nhu on 5/23/24.
//

import SwiftUI

@main
struct SimpleFitnessApp: App {
    @StateObject var manager = HealthManager()
    var body: some Scene {
        WindowGroup {
//            ContentView()
            SimpleFitnessTabView()
                .environmentObject(manager)
        }
    }
}
