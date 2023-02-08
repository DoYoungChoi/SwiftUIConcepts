//
//  TrainCar.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/08.
//

import SwiftUI

enum TrainSymbol: String {
    case front = "train.side.front.car"
    case middle = "train.side.middle.car"
    case rear = "train.side.rear.car"
}

struct TrainCar: View {
    let position: TrainSymbol
    let showFrame: Bool
    let backgroundColor: Color
    
    init(_ position: TrainSymbol, backgroundColor: Color = .orange, showFrame: Bool = true) {
        self.position = position
        self.backgroundColor = backgroundColor
        self.showFrame = showFrame
    }
    
    var body: some View {
        Image(systemName: position.rawValue)
            .background(backgroundColor)
    }
}

struct TrainTrack: View {
    var body: some View {
        Divider()
            .frame(maxWidth: 200)
    }
}

struct TrainCar_Previews: PreviewProvider {
    static var previews: some View {
        TrainCar(
            .front,
            backgroundColor: .mint)
    }
}
