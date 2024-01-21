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
                .padding(.init(top: 150, leading: 0, bottom: 100, trailing: 0))
                .foregroundColor(teamColor)
                .ignoresSafeArea()
            VStack {
                Text(playerName)
                    .padding(.all, 8)
                    .background(Color.blue ,in: RoundedRectangle(cornerRadius: 10))
                    .padding(.bottom)
                    .font(.largeTitle)
                    .bold()
                Image(playerImage)
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading)
                    .padding(.trailing)
            }
            VStack {
                Spacer()
                HStack {
                    Image(playerSignature)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom)
                    Image(teamLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                        .frame(width: 200)
                }
                .padding(.bottom, 140)
                .padding(.leading)
            }
        }
    }
}

#Preview {
    LogoImageView(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", teamLogo: "BlueJays", playerSignature: "signature", teamColor: .jaysBlue)
}
