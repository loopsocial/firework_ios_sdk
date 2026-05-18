//
//  CartItem.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation

struct CartItem: Equatable {
    var productID: String
    var unitID: String
    var quantity: Int = 1
    var name: String
    var price: Money
    var description: String
    var imageURL: String?
}

struct Money: Equatable {
    var amount: Decimal
    var currencyCode: String

    func formattedPrice() -> String {
        let formatter = PriceFormatter.numberFormatter(for: self.currencyCode)
        return formatter.string(from: amount as NSDecimalNumber) ?? ""
    }
}

class PriceFormatter {

    private static var formatters: [String: NumberFormatter] = [:]

    static func numberFormatter(for currencyCode: String) -> NumberFormatter {
        guard let formatter = formatters[currencyCode] else {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.currencyCode = currencyCode
            formatter.locale = Locale.autoupdatingCurrent
            formatters[currencyCode] = formatter
            return formatter
        }
        return formatter
    }
}
