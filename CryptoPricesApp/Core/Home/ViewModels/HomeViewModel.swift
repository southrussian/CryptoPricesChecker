//
//  HomeViewModel.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

// https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var coins = [CoinData]()
    func fetchCoin() {
    
        let urlStr = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h"
        
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            let dataStr = String(data: data, encoding: .utf8)
//            print("DEBUG: Data \(String(describing: dataStr))")
            
            do {
                let coins = try JSONDecoder().decode([CoinData].self, from: data)
//                print("DEBUG: Coins \(coins)")
                self.coins = coins
            } catch let error {
                print("DEBUG: Failed \(error)")
            }
        }
        .resume()
        
    }
    
    init() {
        fetchCoin()
    }
}
