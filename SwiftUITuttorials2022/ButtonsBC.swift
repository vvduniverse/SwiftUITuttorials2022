//
//  ButtonsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.02.2022.
//

import SwiftUI

struct ButtonsBC: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 30) {
            Text(title)
            
            Button("Press me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }) {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.brown
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3 pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.title = "Button $4 out of field!"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

        }
    }
}

struct ButtonsBC_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBC()
    }
}
