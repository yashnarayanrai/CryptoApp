//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 06/04/26.
//
  
import Foundation
import SwiftUI
  
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder),to:nil , from:nil , for: nil)
    }
}
