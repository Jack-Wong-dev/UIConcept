//
//  FormTextField.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct FormTextField: View {
    var systemName: String
    var textfieldName: String
    @Binding var input: String
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .aspectRatio( 1/1, contentMode: .fit)
            Spacer()
            TextField(textfieldName, text: $input)
        }
    }
}

