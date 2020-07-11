//
//  Button.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct GreenBorderButton: View {
    
    let text: String
    let function: () -> Void
        
    var body: some View {
        Button(action: function, label: {
            Text(text)
                .font(.title2)
                .bold()
                .foregroundColor(.primary)
//                .foregroundColor(.green)
                .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .overlay(
                    Rectangle()
                        .stroke(Color.green, lineWidth: 3)
                )
        })
    }
}

struct GreenBorderButton_Previews: PreviewProvider {
    static var previews: some View {
        GreenBorderButton(text: "Button", function: {})
            .previewDevice("iPhone 11 Pro Max")
            .preferredColorScheme(.dark)
    }
}
