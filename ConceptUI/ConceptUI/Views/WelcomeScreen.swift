//
//  ContentView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            Color.black
            VStack {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
            .previewDevice("iPhone 11 Pro Max")
            .preferredColorScheme(.dark)
    }
}
