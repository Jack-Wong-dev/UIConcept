//
//  SelectionViewTemplate.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/10/20.
//

import SwiftUI

struct SelectionViewTemplate<T: Hashable>: View {
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

struct SelectionViewTemplate_Previews: PreviewProvider {
    static var previews: some View {
        SelectionViewTemplate<String>()
    }
}
