//
//  HomeView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 01.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // курс топовых монет
                TopMoversView()
                Divider()
                AllCoinsView()
                
                // общий список всех монет
                
            }
            .navigationTitle("Курс Live")

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
