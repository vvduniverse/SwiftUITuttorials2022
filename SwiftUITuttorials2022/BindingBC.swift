//
//  BindingBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.02.2022.
//

import SwiftUI

struct BindingBC: View {
    
    @State var backgroundColor = Color.brown
    @State var title = "Start Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
         
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    . font(.headline)
                ChangeColorButton(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ChangeColorButton: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor = Color.white
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = Color.indigo
            buttonColor = Color.orange
            title = "Changed new title"
        } label: {
            Text("Change the Color")
                .padding()
                .background(buttonColor)
                .cornerRadius(20)
        }
        
    }
}

struct BindingBC_Previews: PreviewProvider {
    static var previews: some View {
        BindingBC()
    }
}
