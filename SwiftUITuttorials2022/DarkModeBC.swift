//
//  DarkModeBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 13.03.2022.
//

import SwiftUI

struct DarkModeBC: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 25) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
        }
    }
}

struct DarkModeBC_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBC()
                .preferredColorScheme(.dark)
            DarkModeBC()
                .preferredColorScheme(.light)
        }
    }
}
