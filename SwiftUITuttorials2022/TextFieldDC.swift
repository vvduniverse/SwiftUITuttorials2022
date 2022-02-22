//
//  TextFieldDC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 22.02.2022.
//

import SwiftUI

struct TextFieldDC: View {
    
    @State private var textField = ""
    @State private var arrayOfTexts = [String]()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Enter the text here", text: $textField)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    saveText()
                    textField = ""
                } label: {
                    Text("Save".capitalized)
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .background(testIsValid() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                }
                .disabled(!testIsValid())
                
                ScrollView {
                    ForEach(arrayOfTexts, id: \.self) { text in
                        Text(text)
                    }
                }
Spacer()
            }
            .padding()
            .navigationTitle(Text("Text Field testing"))
        }
    }
    
    func testIsValid() -> Bool {
        if textField.count > 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        arrayOfTexts.append(textField)
    }
}

struct TextFieldDC_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFieldDC()
.previewInterfaceOrientation(.portraitUpsideDown)
            TextFieldDC()
        }
    }
}
