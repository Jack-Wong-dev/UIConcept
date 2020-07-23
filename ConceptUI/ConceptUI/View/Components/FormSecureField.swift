//
//  FormSecureField.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct FormSecureField: View {
    
    let text: String
    
    @Binding var password: String
    @Binding var hidden: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "lock.rectangle")
            if hidden {
                SecureField(text, text: $password)
            }else {
                TextField(text, text: $password)
            }
            Button(action: {hidden.toggle()}, label: {
                Image(systemName: hidden ? "eye.slash" : "eye")
                    .foregroundColor(.green)
            })
        }
    }
}




struct FormSecureField_Previews: PreviewProvider {
    static var previews: some View {
        FormSecureField(text: "PASSWORD", password: .constant("password"), hidden: .constant(true))
    }
}
