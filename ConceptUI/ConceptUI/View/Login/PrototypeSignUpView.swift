//
//  PrototypeSignUpView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct PrototypeSignUpView: View {
    @State private var firstName = String()
    @State private var lastName = String()
    @State private var email = String()
    @State private var password = String()
    @State private var confirmPassword = String()
    @State private var hidePassword: Bool = true
    @State private var hideConfirmPassword: Bool = true
    
    
    var body: some View {
        
        VStack(alignment: .center) {
            Form {
                HStack{
                    Image(systemName: "person")
                    TextField("FIRST NAME", text: $firstName)
                }
                
                HStack {
                    Image(systemName: "person")
                    TextField("LAST NAME", text: $lastName)
                }
                HStack {
                    Image(systemName: "envelope")
                    TextField("EMAIL", text: $email)
                }
                HStack {
                    Image(systemName: "lock")
                    if hidePassword {
                        SecureField("PASSWORD", text: $password)
                    }else {
                        TextField("PASSWORD", text: $password)
                    }
                    Button(action: {hidePassword.toggle()}, label: {
                        Image(systemName: hidePassword ? "eye.slash" : "eye")
                    })
                }
                HStack {
                    Image(systemName: "lock")
                    if hideConfirmPassword {
                        SecureField("PASSWORD", text: $confirmPassword)
                    }else {
                        TextField("PASSWORD", text: $confirmPassword)
                    }
                    Button(action: {hideConfirmPassword.toggle()}, label: {
                        Image(systemName: hideConfirmPassword ? "eye.slash" : "eye")
                    })
                }
                
            }

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("SIGN UP")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .overlay(
                        Rectangle()
                            .stroke(Color.green, lineWidth: 3)
                            .frame(width: UIScreen.main.bounds.width-20)
                    )
            })
        }
        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

    }
    
    private func validateFields(){
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
