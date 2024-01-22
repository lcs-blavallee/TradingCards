//
//  EnhancedListItemView.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-19.
//

import SwiftUI

struct EnhancedListItemView: View {
    
    let playerName: String
    let playerImage: String
    let playerDescription: String
    
    var body: some View {
        HStack {
            Image(playerImage)
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .mask(Circle())
            
            VStack (alignment: .leading){
                Text(playerName)
                    .font(.title3)
                    .bold()
                Text(playerDescription)
                
            }
            
        }
    }
}

#Preview {
    EnhancedListItemView(playerName: "Vladimir Guerrero Jr.",playerImage: "vladdy", playerDescription: "Vladdy!")
}
