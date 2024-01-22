//
//  ContentView.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-19.
//

import SwiftUI

struct PlayerListView: View {
    
    var body: some View {
        
        NavigationStack {
            List {
                
                
                NavigationLink(destination: {
                    
                    DetailView(player: vladimirGuerreroJr)
                    
                }, label: {
                    
                    EnhancedListItemView(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", playerDescription: "Vladdy!")
                    
                })
            }
            .navigationTitle("List of Players")
        }
    }
}

#Preview {
    PlayerListView()
}
