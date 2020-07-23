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
            TextField(textfieldName, text: $input)
        }
    }
}



struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(systemName: "envelope", textfieldName: "Email", input: .constant(""))
    }
}
