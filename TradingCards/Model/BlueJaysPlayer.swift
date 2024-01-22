//
//  BlueJaysPlayer.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-19.
//

import Foundation
import SwiftUI

struct BlueJaysPlayer {
    
    let playerName: String
    let playerImage: String
    let teamLogo: String
    let playerSignature: String
    let teamColor: Color
    let homeRunCount: Int
    let runsBattedIn: Int
    let average: Double
    let famousPlay: String
}

let vladimirGuerreroJr = BlueJaysPlayer(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", teamLogo: "BlueJays", playerSignature: "signature", teamColor: .jaysBlue, homeRunCount: 130, runsBattedIn: 404, average: 0.279, famousPlay: "On April 24, 2019, the Blue Jays announced that Guerrero would be called up from Triple-A Buffalo on April 26. Guerrero was considered the top prospect in all of professional baseball prior to being called up,and was hitting .367/.424/.700 with three home runs and eight RBIs during an eight-game stint with Buffalo in 2019. He went hitless in his first three at-bats against the Oakland Athletics before hitting a double in the bottom of the ninth inning and exiting for a pinch runner. Guerrero recorded his first multi hit game, and reached base safely four times, on May 11.")
