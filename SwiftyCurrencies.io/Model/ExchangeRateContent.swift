import Foundation
import SwiftUI

struct ExchangeRateContent: Identifiable {
    let id = UUID().uuidString
    let currencyFlag: String
    let currencyName: String
    let exchangeRateFromTo: Double
}

struct ExchangeRateUSD {
    static let exchangeRateUSDList = [
        ExchangeRateContent(currencyFlag: "EUR", currencyName: "Euro (EUR)", exchangeRateFromTo: 1.08),
        ExchangeRateContent(currencyFlag: "GBP", currencyName: "Great Britain pound (GBP)", exchangeRateFromTo: 0.79),
        ExchangeRateContent(currencyFlag: "RUB", currencyName: "Russian rubles (RUB)", exchangeRateFromTo: 91.90),
        ExchangeRateContent(currencyFlag: "CHY", currencyName: "Chinese yuan (CHY)", exchangeRateFromTo: 7.21),
        ExchangeRateContent(currencyFlag: "JPY", currencyName: "Japanese yenn (JPY)", exchangeRateFromTo: 150.68),
        ExchangeRateContent(currencyFlag: "AED", currencyName: "UAE dirham (AED)", exchangeRateFromTo: 0.27)
    ]
}

struct ExchangeRateEUR {
    static let exchangeRateEURList = [
        ExchangeRateContent(currencyFlag: "USD", currencyName: "US dollar (USD)", exchangeRateFromTo: 1.09),
        ExchangeRateContent(currencyFlag: "GBP", currencyName: "Great Britain pound (GBP)", exchangeRateFromTo: 0.86),
        ExchangeRateContent(currencyFlag: "RUB", currencyName: "Russian rubles (RUB)", exchangeRateFromTo: 100.21),
        ExchangeRateContent(currencyFlag: "CHY", currencyName: "Chinese yuan (CHY)", exchangeRateFromTo: 7.81),
        ExchangeRateContent(currencyFlag: "JPY", currencyName: "Japanese yenn (JPY)", exchangeRateFromTo: 163.53),
        ExchangeRateContent(currencyFlag: "AED", currencyName: "UAE dirham (AED)", exchangeRateFromTo: 3.99)
    ]
}

struct ExchangeRateRUB {
    static let exchangeRateRUBList = [
        ExchangeRateContent(currencyFlag: "USD", currencyName: "US dollar (USD)", exchangeRateFromTo: 0.011),
        ExchangeRateContent(currencyFlag: "GBP", currencyName: "Great Britain pound (GBP)", exchangeRateFromTo: 0.0086),
        ExchangeRateContent(currencyFlag: "EUR", currencyName: "Euro (EUR)", exchangeRateFromTo: 0.010),
        ExchangeRateContent(currencyFlag: "CHY", currencyName: "Chinese yuan (CHY)", exchangeRateFromTo: 0.078),
        ExchangeRateContent(currencyFlag: "JPY", currencyName: "Japanese yenn (JPY)", exchangeRateFromTo: 1.64),
        ExchangeRateContent(currencyFlag: "AED", currencyName: "UAE dirham (AED)", exchangeRateFromTo: 0.040)
    ]
}
