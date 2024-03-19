//
//  SelectCurrency.swift
//  LOTR-17
//
//  Created by Anthony Lartey on 17/03/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    var body: some View {
        ZStack {
            // Parchment Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color.brown)
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                // Currency Icons
                IconGrid(currency: $topCurrency)
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                // Currency Icons
                IconGrid(currency: $bottomCurrency)
                // Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(Color.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}
#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
