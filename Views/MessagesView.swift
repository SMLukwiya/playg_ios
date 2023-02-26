
import SwiftUI

/// This is a message view that changes
/// background color randomly upon being clicked.
struct MessagesView: View {
    let messages = [
        DataItemModal(text: "Greetings", color: Color("green")),
        DataItemModal(text: "Welcome to the shizzle!", color: Color("gray")),
        DataItemModal(text: "We are ready!", color: Color("yellow")),
        DataItemModal(text: "Let's do this!!", color: Color("red"))
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(messages) { message in
                TextView(text: message.text, color: message.color)
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
