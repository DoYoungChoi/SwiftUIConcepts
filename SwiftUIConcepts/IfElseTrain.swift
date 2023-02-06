//
//  IfElseTrain.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct IfElseTrain: View {
    var longerTrain: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                if longerTrain {
                    Image(systemName: "train.side.middle.car")
                }
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            .font(.largeTitle)
            
            Divider()
        }
    }
}

struct IfElseTrain_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            IfElseTrain()
            Spacer()
            IfElseTrain(longerTrain: false)
            Spacer()
        }
    }
}
