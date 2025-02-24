//
//  HomeViewApp.swift
//  HomeView
//
//  Created by Amogh Sharma  on 21/2/2025.
//

import SwiftUI

@main
struct HomeViewApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "tree")
                        Text("Home")
                    }
                
                HomeView()
                    .tabItem {
                        Image(systemName: "drop")
                        Text("Logging")
                    }
                
//                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
            }
            .tint(.green)
        }
    }
}
