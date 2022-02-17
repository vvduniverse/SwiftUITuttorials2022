//
//  Shapes.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 15.02.2022.
//

import SwiftUI

struct ShapesBC: View {
    var body: some View {
        
        HStack(spacing: 20) {
            VStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 105, height: 105)
                Circle()
                    .stroke(Color.yellow, lineWidth: 25)
                Circle()
                    .strokeBorder(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                Circle()
                    .trim(from: 0.2, to: 1.0)
                    .stroke(Color.purple, lineWidth: 20)
                Spacer()
            }
            .frame(width: 100)
            VStack {
                Ellipse()
                    .fill(Color.brown)
                Capsule()
                    .fill(Color.blue)
                Capsule(style: .circular)
                    .fill(Color.indigo)
                Capsule(style: .continuous)
                    .fill(Color.gray)
            }
            .frame(width: 100)
            VStack {
                Rectangle()
                    .fill(Color.indigo)
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 15)
            }
            .frame(width: 100)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBC()
    }
}
