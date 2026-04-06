//
//  ContentView.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 13/02/26.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            VStack(spacing: 40){
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                Text("Seondary Color")
                    .foregroundColor(Color.theme.secondary)
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
            }.font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
