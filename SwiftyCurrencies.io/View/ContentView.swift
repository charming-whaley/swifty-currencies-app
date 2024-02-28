import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CalculatorView()
                .tabItem {
                    Image(systemName: "arrowshape.left.arrowshape.right.fill")
                    Text("Calculator")
                }
            
            ExchangeRateView()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Conversion rate")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Preferences")
                }
        }
    }
}

#Preview {
    ContentView()
}
