//
//  LoginViewModel.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/9/20.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published private var email = String()
    @Published private var password = String()
    
    func verify() {
        print("DEBUG: Login Button Pressed")
        print(email.isEmpty ? "Email is empty" : "Email is \(email)")
    }
}
