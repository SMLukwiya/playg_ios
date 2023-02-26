
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color("blue"),
                                .white,
                                Color("purple")],
                       startPoint: .top,
                       endPoint: .bottom)
        .opacity(0.3)
        .ignoresSafeArea()
    }
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
