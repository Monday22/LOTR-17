//
//  ExchangeRate.swift
//  LOTR-17
//
//  Created by Anthony Lartey on 17/03/2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    var body: some View {
        HStack {
            // Left currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
            // Exchange Rate Text
            Text(text)
            // Right Currency Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
        }
    }
}
#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}

