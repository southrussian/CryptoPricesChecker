//
//  AllCoinsView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

import SwiftUI

struct AllCoinsView: View {
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
                    ForEach(0..<20, id: \.self) { _ in
                        RowCoinView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
