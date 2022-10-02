//
//  RowCoinView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

import SwiftUI

struct RowCoinView: View {
    let coin: CoinData
    var body: some View {
        HStack {
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .scaledToFit()
                .foregroundColor(.orange)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("\(coin.name)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("\(coin.symbol.uppercased())")
                    .fontWeight(.light)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 2)
            Spacer()
            VStack(alignment: .trailing, spacing: 2) {
                Text("$\(coin.currentPrice)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("\(coin.priceChangePercentage24H)%")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 2)
    }
}

//struct RowCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowCoinView(coin: coin)
//    }
//}
