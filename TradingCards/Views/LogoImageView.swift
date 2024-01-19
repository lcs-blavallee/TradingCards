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
    
    //MARK: Computed properties
    
    var body: some View {
        ZStack{
        ZStack (alignment: .topLeading) {
            Color.blue
                .ignoresSafeArea()
            Text(playerName)
                .padding(.leading, 20)
                .padding(.top)
                .font(.largeTitle)
                .bold()
            Rectangle()
                .fill(.white)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 90)
                .padding(.bottom, 310)
            Rectangle()
                .fill(.red)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.top, 100)
                .padding(.bottom, 320)
            Rectangle()
                .fill(.white)
                .padding(.leading, 40)
                .padding(.trailing, 40)
                .padding(.top, 110)
                .padding(.bottom, 330)
            Image(playerImage)
                .resizable()
                .frame(width: 300)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.top, 120)
                .padding(.bottom, 340)
        }
            Image(teamLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .padding(.leading, 200)
        }
    }
}

#Preview {
    LogoImageView(playerName: "Vladimir Guerrero Jr.", playerImage: "VladimirGuerreroJr", teamLogo: "BlueJays")
}
