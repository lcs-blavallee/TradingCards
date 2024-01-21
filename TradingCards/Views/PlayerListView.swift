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
                    
                    DetailView()
                    
                }, label: {
                    
                    EnhancedListItemView(playerName: "Vladimir Guerrero Jr.", playerImage: "vladdy", playerDescription: "Vladdy!")
                    
                })
            }
        }
        .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PlayerListView()
}
