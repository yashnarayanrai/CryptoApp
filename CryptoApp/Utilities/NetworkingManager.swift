//
//  NetworkingManager.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 14/03/26.
//

import Foundation
import Combine

class NetworkingMangager {
    
    enum NetwokingError: LocalizedError{
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String?{
            switch self{
            case .badURLResponse(url: let url): return "[] Bad response from URL: \(url)"
            case .unknown: return "[] Unknown error occured"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data,Error>{
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({try handleURLResponse(output:$0 , url: url)})
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output,url: URL) throws -> Data{
//        throw NetwokingError.badURLResponse(url: url)
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else{
            throw NetwokingError.badURLResponse(url: url)
        }
        return output.data
    }
    static func handleCampletion(completion: Subscribers.Completion<Error>){
        switch completion{
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
}
