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
            HStack {
                Button(action: {
                    withAnimation(.spring()) {
                        login.toggle()
                    }
                }, label: {
                    Text("LOG IN")
                        .font(.title2)
                        .bold()
                        .foregroundColor(login ? .green : .gray)
                })
                Button(action: {
                    withAnimation(.spring()) {
                        login.toggle()
                    }
                }, label: {
                    Text("SIGN UP")
                        .font(.title2)
                        .bold()
                        .foregroundColor(login ? .gray : .green)
                })
            }
            .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            if login {
                    LoginView()
            }else {
                    SignUpView()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .previewDevice("iPhone 11 Pro Max")
                .preferredColorScheme(.dark)
        }
    }
}
