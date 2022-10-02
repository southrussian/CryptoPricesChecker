//
//  TopMoversView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 02.10.2022.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Наибольший рост")
                .font(.headline)
                .foregroundColor(.gray)
            
            ScrollView(.horizontal) {
                HStack(spacing: 9) {
                    ForEach(0..<5, id: \.self) { _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
