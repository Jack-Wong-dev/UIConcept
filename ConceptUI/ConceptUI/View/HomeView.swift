//
//  Home.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct HomeView: View {
    
    @State private var login: Bool = true
    
    var body: some View {
        VStack{
            ToggleView(login: $login)

            if login {
                    LoginView()
            }else {
                    SignUpView()
            }
        }
//        .preferredColorScheme(.dark)
    }
}

struct ToggleView: View {
    
    @Binding var login: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.spring()) {
                    login.toggle()
                }
            }, label: {
                Text("LOG IN")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(login ? .green : .gray)
            })
            Button(action: {
                withAnimation(.spring()) {
                    login.toggle()
                }
            }, label: {
                Text("SIGN UP")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(login ? .gray : .green)
            })
        }
        .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .previewDevice("iPhone 11 Pro Max")
            HomeView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}
