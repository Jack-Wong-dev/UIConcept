//
//  GreenBorderButtonStyle.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct GreenBorderButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(.green)
            .overlay(
                Rectangle()
                    .strokeBorder(Color.green, lineWidth: 3.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            )
            .padding(.horizontal, 10)
    }
}


struct GreenBorderButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
        .buttonStyle(GreenBorderButtonStyle())
    }
}
