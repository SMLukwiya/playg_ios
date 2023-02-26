
import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    // @Binding var layoutDirection: LayoutDirection
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Potrait mode
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            // Landscape
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
}
