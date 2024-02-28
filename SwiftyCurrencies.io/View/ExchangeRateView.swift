import SwiftUI

struct ExchangeRateView: View {
    var ratesUSD: [ExchangeRateContent] = ExchangeRateUSD.exchangeRateUSDList
    var ratesEUR: [ExchangeRateContent] = ExchangeRateEUR.exchangeRateEURList
    var ratesRUB: [ExchangeRateContent] = ExchangeRateRUB.exchangeRateRUBList
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("USD conversion rate")) {
                    ForEach(ratesUSD, id: \.id) { item in
                        ConversionCard(conversionInfo: item)
                    }
                }
                
                Section(header: Text("EUR conversion rate")) {
                    ForEach(ratesEUR, id: \.id) { item in
                        ConversionCard(conversionInfo: item)
                    }
                }
                
                Section(header: Text("RUB conversion rate")) {
                    ForEach(ratesRUB, id: \.id) { item in
                        ConversionCard(conversionInfo: item)
                    }
                }
            }
            .navigationTitle("Conversion rate")
        }
    }
}

#Preview {
    ExchangeRateView()
}

struct ConversionCard: View {
    var conversionInfo: ExchangeRateContent
    
    var body: some View {
        HStack {
            Image(conversionInfo.currencyFlag)
                .resizable()
                .scaledToFit()
                .frame(width: 46, height: 46)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(conversionInfo.currencyName)
                    .fontWeight(.semibold)
                
                Text("\(conversionInfo.exchangeRateFromTo)")
                    .font(.subheadline)
                    .foregroundStyle(Color("TextColor"))
            }
            .padding(.leading, 10)
        }
    }
}
