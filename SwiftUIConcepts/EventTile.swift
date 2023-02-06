//
//  EventTile.swift
//  SwiftUIConcepts
//
//  Created by Do-Young Choi on 2023/02/06.
//

import SwiftUI

struct Event {
    let title: String
    let date: Date
    let location: String
    let symbol: String
    
    static var `default` = Event(
        title: "Latte's Birthday",
        date: Date(),
        location: "Goyang",
        symbol: "pawprint.fill")
}

struct EventTile: View {
    let event: Event = Event.default
    let stripeHeight = 15.0
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                Text(
                    event.date,
                    format: Date.FormatStyle()
                        .day(.defaultDigits)
                        .month(.wide))
                Text(event.location)
            }
        }
        .padding()
        .padding(.top, stripeHeight)
        .background {
            ZStack(alignment: .top) {
                Rectangle()
                    .opacity(0.3)
                Rectangle()
                    .frame(maxHeight: stripeHeight)
            }
            .foregroundColor(.teal)
        }
        .clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
    }
}

struct EventTile_Previews: PreviewProvider {
    static var previews: some View {
        EventTile()
    }
}
