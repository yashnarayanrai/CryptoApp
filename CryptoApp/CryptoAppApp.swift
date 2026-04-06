//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 13/02/26.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject private var vm = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
