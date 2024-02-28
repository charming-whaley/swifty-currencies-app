import SwiftUI

struct CalculatorView: View {
    @State private var amountOfUsersMoney = ""
    @State private var firstCurrencySelected = 0
    @State private var secondCurrencySelected = 1
    
    private let currenciesNames = ["USD", "RUB", "EUR", "GBP", "CHY"]
    
    func converter(of convertingValue: String) -> String {
        var convertedValue: Double = 1.0
        let amountOfMoney = Double(convertingValue) ?? 0.0
        let fromChosenCurrency = currenciesNames[firstCurrencySelected]
        let toChosenCurrency = currenciesNames[secondCurrencySelected]
        
        let usdRates = ["USD": 0, "RUB": 92.05, "EUR": 0.92, "GBP": 0.79, "CHY": 7.20]
        let rubRates = ["USD": 0.011, "RUB": 0, "EUR": 0.010, "GBP": 0.0086, "CHY": 0.079]
        let eurRates = ["USD": 1.08, "RUB": 99.06, "EUR": 0, "GBP": 0.86, "CHY": 7.70]
        let gbpRates = ["USD": 1.27, "RUB": 116.55, "EUR": 1.17, "GBP": 0, "CHY": 9.11]
        let chyRates = ["USD": 0.14, "RUB": 12.89, "EUR": 0.13, "GBP": 0.11, "CHY": 0]
        
        switch (fromChosenCurrency) {
        case "USD":
            convertedValue = amountOfMoney * (usdRates[toChosenCurrency]!)
        case "RUB":
            convertedValue = amountOfMoney * (rubRates[toChosenCurrency]!)
        case "EUR":
            convertedValue = amountOfMoney * (eurRates[toChosenCurrency]!)
        case "GBP":
            convertedValue = amountOfMoney * (gbpRates[toChosenCurrency]!)
        case "CHY":
            convertedValue = amountOfMoney * (chyRates[toChosenCurrency]!)
        default:
            print("Something went wrong! Please try again!")
        }
        
        return String(format: "%.2f", convertedValue)
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Enter your amount of money")) {
                    TextField("i.e. $12", text: $amountOfUsersMoney)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Choose currencies")) {
                    Picker(selection: $firstCurrencySelected) {
                        ForEach(0..<currenciesNames.count, id: \.self) { item in
                            Text(currenciesNames[item]).tag(item)
                        }
                    } label: {
                        Text("From")
                    }

                    Picker(selection: $secondCurrencySelected) {
                        ForEach(0..<currenciesNames.count, id: \.self) { item in
                            Text(currenciesNames[item]).tag(item)
                        }
                    } label: {
                        Text("To")
                    }
                }
                
                Section(header: Text("What you will get")) {
                    Text("\(converter(of: amountOfUsersMoney)) \(currenciesNames[secondCurrencySelected])")
                }
            }
            .navigationTitle("Calculator")
        }
    }
}

#Preview {
    CalculatorView()
}
