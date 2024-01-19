//
//  StatisticsView.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-19.
//

import SwiftUI

struct StatisticsView: View {
    
    let homeRunCount: Int
    let runsBattedIn: Int
    let average: Double
    let famousPlay: String
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Spacer()
                HStack {
                    Text("Career stats")
                        .bold()
                    Spacer()
                }
                .padding(.bottom)
                HStack {
                    VStack (alignment: .leading) {
                        Text("Home runs")
                        Text("\(homeRunCount)")
                    }
                    VStack (alignment: .leading) {
                        Text("RBI")
                        Text("\(runsBattedIn)")
                    }
                    VStack (alignment: .leading) {
                        Text("Batting average")
                        Text("\(average)")
                    }
                }
                Text("Most famous play")
                    .bold()
                    .padding(.top)
                    .padding(.bottom)
                Text(famousPlay)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    StatisticsView(homeRunCount: 130, runsBattedIn: 404, average: 0.279, famousPlay: "On April 24, 2019, the Blue Jays announced that Guerrero would be called up from Triple-A Buffalo on April 26. Guerrero was considered the top prospect in all of professional baseball prior to being called up,and was hitting .367/.424/.700 with three home runs and eight RBIs during an eight-game stint with Buffalo in 2019. He went hitless in his first three at-bats against the Oakland Athletics before hitting a double in the bottom of the ninth inning and exiting for a pinch runner. Guerrero recorded his first multi hit game, and reached base safely four times, on May 11.")
}
