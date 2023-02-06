//
//  KeywordBubble.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct KeywordBubble: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    var capsuleColor: Color = .green.opacity(0.75)
    var textColor: Color = .white
    
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(textColor)
            .padding(paddingWidth)
            .background(capsuleColor, in: Capsule())
    }
}

struct KeywordBubble_Previews: PreviewProvider {
    static let keyword = ["chives", "fern-leaf lavender"]
    static var previews: some View {
        VStack {
            ForEach(keyword, id:\.self) { word in
                KeywordBubble(
                    keyword: word,
                    symbol: "leaf",
                    capsuleColor: .yellow.opacity(0.75),
                    textColor: .black)
            }
        }
    }
}
