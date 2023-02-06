//
//  AlternativeContentView.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct AlternativeContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Alternative Content")
        }
        .padding()
    }
}

struct AlternativeContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlternativeContentView()
    }
}
