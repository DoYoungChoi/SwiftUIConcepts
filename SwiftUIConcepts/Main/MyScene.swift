//
//  MyScene.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct MyScene: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
