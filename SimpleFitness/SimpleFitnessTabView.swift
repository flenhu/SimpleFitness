//
//  SimpleFitnessTabView.swift
//  SimpleFitness


import SwiftUI

struct SimpleFitnessTabView: View {
    @EnvironmentObject var manager: HealthManager
    @State var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
                .environmentObject(manager)
            ContentView()
                .tag("Content")
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
    
}

#Preview {
    SimpleFitnessTabView()
}
