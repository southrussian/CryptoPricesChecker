//
//  HomeView.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 01.10.2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // курс топовых монет
                TopMoversView(viewModel: HomeViewModel())
                Divider()
                AllCoinsView(viewModel: viewModel)
                
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
