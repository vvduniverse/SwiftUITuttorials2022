//
//  PaddingAndSpacerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 17.02.2022.
//

import SwiftUI

struct PaddingAndSpacerBC: View {
    var body: some View {
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding(.all, 15)
                .padding(.leading, 30)
                .background(Color.blue)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .background(Color.green)
            
            VStack(alignment: .leading) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                Text("Of course, this was the moment that Sekou picked to deliver his bill, which he must have known we’d never be able to pay. He made it his business to know our situation. In this way, he’d crank up the pressure and increase our sense of insecurity. In other words, it was harvesttime.")
//                    .multilineTextAlignment(.trailing)
                    .padding()
                    .padding(.vertical, 30)
                    .background(
                        Color.white
                            .cornerRadius(10)
                            .shadow(
                                color: .black.opacity(0.3),
                                radius: 10,
                                x: 0.0, y: 10)
                    )
                    .padding(.horizontal, 10)
            }
        }
    }
}

struct PaddingAndSpacerBC_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBC()
    }
}
