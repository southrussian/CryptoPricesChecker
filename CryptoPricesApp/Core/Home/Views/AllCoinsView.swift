//
//  AllCoinsView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Все валюты")
                .padding(.vertical, 3)
                .padding(.horizontal)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            
            HStack {
                Text("Наименование")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("Цена")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            .fontWeight(.light)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        RowCoinView(coin: coin)
                    }
                }
            }
        }
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
