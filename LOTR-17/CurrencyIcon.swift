//
//  CurrencyIcon.swift
//  LOTR-17
//
//  Created by Anthony Lartey on 17/03/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    var body: some View {
        ZStack(alignment: .bottom) {
            // Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            // Currency Name
            Text(currencyName)
                .padding(3.0)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(Color.brown.opacity(0.75))
        }
        .padding(3.0)
        .frame(width: 100.0, height: 100.0)
        .background(Color.brown)
        .clipShape(.rect(cornerRadius: 25.0))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
