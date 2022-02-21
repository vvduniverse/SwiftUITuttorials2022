//
//  PopoverBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.02.2022.
//

import SwiftUI

struct PopoverBC: View {
    
    @State private var isPresented = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Button {
                    isPresented.toggle()
                } label: {
                    Text("Button")
                        .font(.largeTitle)
                }
                Spacer()
            }
//            Method 1 - sheet
//            .sheet(isPresented: $isPresented) {
//                NewView()
            
//            Method 2 - transition
//            ZStack {
//                if isPresented {
//                    NewView(showNewScreen: $isPresented)
//                        .padding(.top, 50)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: isPresented)
//                }
//                
//            }
//            .zIndex(2.0)
//            Method 3
            NewView(showNewScreen: $isPresented)
                .padding(.top, 50)
                .offset(y: isPresented ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: isPresented)
        }
    }
}

struct NewView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.orange
                .ignoresSafeArea()

            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding()
            }

            
        }
    }
}

struct PopoverBC_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBC()
//        NewView()
    }
}
