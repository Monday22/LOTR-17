//
//  CurrencyTip.swift
//  LOTR-17
//
//  Created by Anthony Lartey on 18/03/2024.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title: Text = Text("Change Currency")
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen.")
}
