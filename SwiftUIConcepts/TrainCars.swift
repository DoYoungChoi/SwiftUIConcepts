//
//  TrainCars.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/08.
//

import SwiftUI

struct TrainCars: View {
    @ScaledMetric var trainCarSpace = 5
    
    var body: some View {
        VStack {
            Text("Default Spacing")
            HStack(spacing: trainCarSpace) {
                TrainCar(.rear)
                Spacer()
                ZStack {
                    TrainCar(.middle)
                        .font(.largeTitle)
                        .opacity(0)
                        .background(.green)
                    TrainCar(.middle)
                }
                Spacer()
                TrainCar(.front)
            }
            .padding(.top, trainCarSpace)
            TrainTrack()
        }
    }
}

struct TrainCars_Previews: PreviewProvider {
    static var previews: some View {
        TrainCars()
    }
}
