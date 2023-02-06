//
//  MyAlternativeScene.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}
