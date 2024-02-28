import SwiftUI

struct SettingsView: View {
    enum DisplayMode: Int {
        case system, light, dark
        
        var colorScheme: ColorScheme? {
            switch self {
            case .light:
                return ColorScheme.light
            case .dark:
                return ColorScheme.dark
            case .system:
                return nil
            }
        }
        
        func changeColorScheme() {
            var userInterfaceStyle: UIUserInterfaceStyle
            
            switch self {
            case .light:
                userInterfaceStyle = .light
            case .dark:
                userInterfaceStyle = .dark
            case .system:
                userInterfaceStyle = UITraitCollection.current.userInterfaceStyle
            }
            
            let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                        scene?.keyWindow?.overrideUserInterfaceStyle = userInterfaceStyle
        }
    }
    
    @AppStorage("displayMode") var displayMode = DisplayMode.system
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Which color scheme do you prefer?")) {
                    Picker("Color scheme", selection: $displayMode) {
                        Text("Default").tag(DisplayMode.system)
                        Text("Light").tag(DisplayMode.light)
                        Text("Dark").tag(DisplayMode.dark)
                    }
                    .onChange(of: displayMode) {
                        print(displayMode)
                        displayMode.changeColorScheme()
                    }

                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}

