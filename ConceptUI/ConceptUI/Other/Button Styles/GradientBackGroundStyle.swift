//
//  GradientBackGroundStyle.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct GradientBackgroundStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
}

struct GradientBackGroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Button")
            })
            .previewLayout(.sizeThatFits)
            .buttonStyle(GradientBackgroundStyle())
        }
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
    }
}
