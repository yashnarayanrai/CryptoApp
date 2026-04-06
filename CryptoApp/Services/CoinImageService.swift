//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 15/03/26.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
        
    private let coin : CoinModel
    private var imageSubscription: AnyCancellable?
    
    init(coin: CoinModel){
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage(){
        guard let url = URL(string: coin.image) else {return}
        
        imageSubscription = NetworkingMangager.download(url: url)
            .tryMap({(data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion:
                    NetworkingMangager.handleCampletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
