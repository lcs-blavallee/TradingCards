//
//  LogoImageViews.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-19.
//

import SwiftUI

struct LogoImageView: View {
    
    //MARK: Stored properties
        let playerName: String
        let playerImage: String
        let teamLogo: String
        let playerSignature: String
        let teamColor: Color
    
    //MARK: Computed properties
    
    var body: some View {
            ZStack {
                        Image(playerImage)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            .overlay (
                    VStack {
                        Spacer()
                        HStack {
                            Image(playerSignature)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image(teamLogo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200)
                        }
                        .frame(width: 350)
                        .aspectRatio(contentMode: .fit)
                    }
                        .padding(.leading, 60)
                    )
            }
    }
}

#Preview {
    LogoImageView(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", teamLogo: "BlueJays", playerSignature: "signature", teamColor: .jaysBlue)
}
