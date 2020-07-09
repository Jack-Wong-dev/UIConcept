//
//  SignUpView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var firstName = String()
    @State private var lastName = String()
    @State private var email = String()
    @State private var password = String()
    @State private var confirmPassword = String()
    @State private var hidePassword: Bool = true
    @State private var hideConfirmPassword: Bool = true
    
    var body: some View {
        VStack{
            Form {
                FormTextField(systemName: "person", textfieldName: "FIRST NAME", input: $firstName)
                FormTextField(systemName: "person", textfieldName: "LAST NAME", input: $lastName)
                FormTextField(systemName: "envelope", textfieldName: "EMAIL", input: $email)
                FormSecureField(text: "PASSWORD", password: $password, hidden: $hidePassword)
                FormSecureField(text: "CONFIRM PASSWORD", password: $confirmPassword, hidden: $hideConfirmPassword)
            }
            GreenBorderButton(text: "SIGN UP", function: validateFields)
        }
    }
    
    private func validateFields(){
        print("Validating")
        if firstName.isEmpty{
            print("First name is empty")
        }else{
            print("First name is \(firstName)")
        }
    }
}

struct PrototypeSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 11 Pro Max")
            .preferredColorScheme(.dark)
    }
}

