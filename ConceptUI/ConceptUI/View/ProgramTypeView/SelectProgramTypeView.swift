//
//  SelectProgramTypeView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/10/20.
//

import SwiftUI

struct SelectProgramTypeView: View {
    var body: some View {
        VStack {
            HStack {
                Label("INDIVIDUAL", systemImage: "person")
                Label("TEAM", systemImage: "person")
            }
        }
    }
}

struct SelectProgramTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectProgramTypeView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro Max")
    }
}
