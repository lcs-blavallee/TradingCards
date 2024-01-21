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
                RoundedRectangle(cornerRadius:30)
                    .foregroundColor(teamColor)
                    .ignoresSafeArea()
                    VStack {
                        Text(playerName)
                            .padding(.all, 8)
                            .background(Color.blue ,in: RoundedRectangle(cornerRadius: 10))
                            .padding(.bottom)
                            .padding(.top, 30)
                            .font(.largeTitle)
                            .bold()
                        Image(playerImage)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                    }
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
                        .padding(.bottom, 30)
                        .frame(width: 350)
                        .aspectRatio(contentMode: .fit)
                    }
            }
    }
}

#Preview {
    LogoImageView(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", teamLogo: "BlueJays", playerSignature: "signature", teamColor: .jaysBlue)
}
