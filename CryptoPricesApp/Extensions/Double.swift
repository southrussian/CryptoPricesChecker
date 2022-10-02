//
//  Double.swift
//  CryptoPricesApp
//
//  Created by Danil Peregorodiev on 03.10.2022.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        
        return formatter
    }
    
    func toCurrencyThreeDecimals() -> String {
        return currencyFormatter.string(for: self) ?? "$0.000"
    }
}
