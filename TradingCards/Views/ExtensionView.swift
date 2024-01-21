//
//  ExtensionView.swift
//  TradingCards
//
//  Created by Benjamin Lavallee on 2024-01-20.
//

import SwiftUI

extension Double {
    var roundedToThousandth: String {
        return self.formatted(.number.precision(.fractionLength(3)))
    }
}
