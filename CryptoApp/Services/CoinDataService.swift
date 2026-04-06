//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 13/03/26.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins(){
        guard let url = URL(string:
            "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h"
        ) else {return}
        
        coinSubscription = NetworkingMangager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingMangager.handleCampletion, receiveValue: {[weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                print("Coins count:", returnedCoins.count)
                self?.coinSubscription?.cancel()
            })
    }
}
