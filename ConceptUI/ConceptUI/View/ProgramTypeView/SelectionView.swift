//
//  SelectionView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct SelectionView: View {
    
    @State private var selected = "MMA"
    
    let selection: [String] = ["BASEBALL","BASKETBALL","FIELDHOCKEY","FOOTBALL","HOCKEY","LACROSSE","MMA","SOCCER","SOFTBALL","SWIMMING","TRACK & FIELD","VOLLEYBALL","WRESTLING"]
    
    var vGridLayout = [ GridItem(.flexible()), GridItem(.flexible()) ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: vGridLayout, spacing: 10) {
                ForEach(selection, id: \.self) { name in
                    GridButtonView(name: name, selected: $selected)
                }
            }
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            SelectionView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro Max")
            SelectionView()
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}


struct GridButtonView: View {
    
    let name: String
    @Binding var selected: String
    
    var body: some View {
        Button(action: {
            print("DEBUG: Selected \(name)")
            selected = name
        }, label: {
            Text(name)
                .foregroundColor(.primary)
                .bold()
                .padding(.vertical)
                .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .overlay(
                    Rectangle()
                        .stroke( selected == name ? Color.green : Color.primary, lineWidth: 3)
                )
                .padding([.leading,.trailing], 10)
                .opacity(selected == name ? 1 : 0.5)
        })
    }
}
