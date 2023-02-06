//
//  SwiftUIConceptsApp.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

@main
struct SwiftUIConceptsApp: App {
    var body: some Scene {
        #if os(iOS)
        MyScene()
        #elseif os(macOS)
        MyAlternativeScene()
        #endif
    }
}
