//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by m1 on 26/02/2023.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack() {
                TitleView()
                
                Spacer()
               
                MessagesView()
                
                Spacer()
                        }
            .padding()
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
