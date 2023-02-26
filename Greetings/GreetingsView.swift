//
//  ContentView.swift
//  Greetings
//
//  Created by m1 on 24/02/2023.
//

import SwiftUI

struct GreetingsView: View {
   
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
               
                MessagesView()
                
                Spacer()
                        }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}



