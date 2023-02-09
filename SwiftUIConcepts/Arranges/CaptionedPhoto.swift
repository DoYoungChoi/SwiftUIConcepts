//
//  CaptionedPhoto.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct CaptionedPhoto: View {
    var assetName: String
    var captionText: String
    
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                Caption(text: captionText)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct Caption: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75), in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static let landscapeName = "Pink_Peony"
    static let landscapeCaption = "This photo is wider than it is tall."
    static let portraitName = "Yellow_Daisy"
    static let portraitCaption = "This photo is taller than it is wide."
    static var previews: some View {
        CaptionedPhoto(assetName: portraitName,
                       captionText: portraitCaption)
        CaptionedPhoto(assetName: landscapeName,
                       captionText: landscapeCaption)
        .preferredColorScheme(.dark)
        CaptionedPhoto(assetName: landscapeName,
                       captionText: landscapeCaption)
        .preferredColorScheme(.light)
    }
}
