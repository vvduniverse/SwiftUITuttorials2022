//
//  TextBootCamp.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 15.02.2022.
//

import SwiftUI

struct TextBC: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.uppercased())
                
                .font(.headline)
                .fontWeight(.heavy)
                .bold()
//                .underline()
                .foregroundColor(Color.red)
                .underline(true, color: .purple)
                .italic()
                .strikethrough(true, color: .brown)
            Text("Maybe")
                .font(.system(size: 24, weight: .semibold, design: .serif))
                .foregroundColor(Color.yellow)
            Text("Some people love to say some ugly thing to others sudenly for all of us!".capitalized)
                .bold()
                .foregroundColor(.indigo)
//                .baselineOffset(10.0)
//                .kerning(2.0)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 100)
                .minimumScaleFactor(0.1)
                
        }
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBC()
    }
}
