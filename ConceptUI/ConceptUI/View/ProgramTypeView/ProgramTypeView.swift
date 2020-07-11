//
//  ProgramTypeView.swift
//  ConceptUI
//
//  Created by Jack Wong on 7/8/20.
//

import SwiftUI

struct ProgramTypeView: View {
        
    @State private var progress = 1.0
    @State private var sheetIsPresented = false
    @State private var role = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Select Sport").font(.title2).bold()
                SelectionView()
            }
            if sheetIsPresented {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                SelectionSheetView(selection: $role)
            }
            ZStack (alignment: .bottom) {
                VStack {
                    Spacer()
                    GreenBorderButton(text: "NEXT", function: nextButtonPressed)
                        .background(Color(UIColor.systemBackground))
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    ProgressView(value: progress, total: 6.0)
                        .progressViewStyle(GreenProgressViewStyle())
                        .padding([.bottom,.horizontal], /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
    
    private func nextButtonPressed() {
        print("DEBUG: NEXT BUTTON PRESSED")
        if progress < 6 {
            progress += 1
            print(progress)
        }
        sheetIsPresented.toggle()
    }
}

struct ProgramTypeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProgramTypeView()
                .previewDevice("iPhone 11 Pro Max")
                .preferredColorScheme(.dark)
            ProgramTypeView()
                .previewDevice("iPhone 11 Pro Max")
                .preferredColorScheme(.light)
        }
    }
}

struct SelectionSheetView: View {
    
    @Binding var selection: String
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVStack(spacing: 10) {
                    Text("Baseball")
                        .font(.headline)
                        .bold()
                        .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    ForEach(0..<100) { value in
                        GridButtonView(name: "Choice \(value)", selected: $selection)
                            .padding(.horizontal, 20)
                    }
                }
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 300, maxWidth: 350, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 300, maxHeight: 350, alignment: .center)
            .padding([.horizontal, .top], 5)
        }
        .background(Color(UIColor.systemBackground))
        .border(Color.green, width: 3)
    }
}
