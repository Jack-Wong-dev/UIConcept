//
//  GreenProgressView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/9/20.
//

import SwiftUI

struct GreenProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(.green)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct GreenProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.75)
            .previewDevice("iPhone 11 Pro Max")
            .progressViewStyle(GreenProgressViewStyle())
            .padding()
    }
}

