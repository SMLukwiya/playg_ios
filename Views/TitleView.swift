//
//  TitleView.swift
//  Greetings
//
//  Created by m1 on 26/02/2023.
//

import SwiftUI

struct TitleView: View {
    
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let captions: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 16 programming"),
        LocalizedStringKey("Mastering Javascript"),
        LocalizedStringKey("Mastering Typescript"),
        LocalizedStringKey("Hunger for knowledge")
    ]
    var body: some View {
        HStack {
            GreetingsTextView(captionIndex: $captionIndex)
            Spacer()
            RotatableCircleView(isRotated: $isRotated)
        }
    }
}

struct VerticalTitleView: View {
    
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let captions: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 16 programming"),
        LocalizedStringKey("Mastering Javascript"),
        LocalizedStringKey("Mastering Typescript"),
        LocalizedStringKey("Hunger for knowledge")
    ]
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(captionIndex: $captionIndex)
            RotatableCircleView(isRotated: $isRotated)
            Spacer()
        }
    }
}
struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    
    let captions: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 16 programming"),
        LocalizedStringKey("Mastering Javascript"),
        LocalizedStringKey("Mastering Typescript"),
        LocalizedStringKey("Hunger for knowledge")
    ]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text(LocalizedStringKey("Greetings!"))
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(captions[captionIndex])
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            captionIndex = Int.random(in: 0..<captions.count)
        }    }
}

struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    
    var body: some View {
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(
                colors: [.blue, .green, .red]),
                center: .center,
                angle: .zero),
                lineWidth: 10)
            .rotationEffect(isRotated ? .zero : .degrees(360))
            .frame(maxWidth: 70, maxHeight: 70)
            .onTapGesture {
                withAnimation (Animation.spring()) {
                    isRotated.toggle()
                }
            }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        // ios 15TitleView()
       VerticalTitleView()
    }
}
