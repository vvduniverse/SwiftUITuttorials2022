//
//  Gradients.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.02.2022.
//

import SwiftUI

struct GradientsBC: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.red)
                .frame(width: 300, height: 150)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                .frame(width: 300, height: 150)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(
                        colors: [Color.yellow, Color.gray],
                        center: .topLeading,
                        startRadius: 5,
                        endRadius: 200
                    )
                )
                .frame(width: 300, height: 150)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(
                        colors: [Color.blue, Color.mint],
                        center: .topLeading,
                        angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 150)
        }
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBC()
    }
}
