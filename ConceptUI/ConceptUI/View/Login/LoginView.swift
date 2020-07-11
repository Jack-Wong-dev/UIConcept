//
//  SignUpView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct LoginView: View {

    @State private var email = String()
    @State private var password = String()
    @State private var hidePassword: Bool = true

    var body: some View {
        VStack {
            Form {
                FormTextField(systemName: "envelope", textfieldName: "Email", input: $email)
                FormSecureField(text: "PASSWORD", password: $password, hidden: $hidePassword)
            }
            GreenBorderButton(text: "LOG IN", function: signUpButtonPressed )
        }
    }

    private func signUpButtonPressed(){
        print("DEBUG: Sign up button pressed")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice("iPhone 11 Pro Max")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}

