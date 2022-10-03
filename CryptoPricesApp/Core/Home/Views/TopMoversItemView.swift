//
//  TopMoversItemView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: CoinData
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
//            Image(systemName: "bitcoinsign.circle.fill")
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2) {
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice.toCurrencyThreeDecimals())")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("\(coin.priceChangePercentage24H)%")
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                  
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBGColor"))
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray3), lineWidth: 2))
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView(coin: <#CoinData#>)
//    }
//}
