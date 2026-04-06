//
//  Color.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 13/02/26.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let background = Color("BackgroundColor")
    let accent = Color("AccentColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondary = Color("SecondaryTextColor")
}
