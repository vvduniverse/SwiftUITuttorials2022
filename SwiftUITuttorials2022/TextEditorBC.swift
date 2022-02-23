//
//  TextEditorBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 23.02.2022.
//

import SwiftUI

struct TextEditorBC: View {
    
    @State private var textEditorText = ""
    @State private var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .cornerRadius(10)
                    .padding()
                    .frame(height: 300)
                    .colorMultiply(Color(UIColor.secondarySystemBackground))
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .padding()
//                        .padding(.horizontal)
                        .frame(width: 200)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                Text(savedText)
Spacer()
            }
            .navigationTitle(Text("Text editor practice"))
            .background(Color.indigo.opacity(0.3))
        }
    }
}

struct TextEditorBC_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBC()
    }
}
