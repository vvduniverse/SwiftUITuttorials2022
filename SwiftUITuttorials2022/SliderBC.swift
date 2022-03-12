//
//  SliderBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 12.03.2022.
//

import SwiftUI

struct SliderBC: View {
    
    @State private var sliderValue = 5.0
    @State private var color = Color.brown
    
    var body: some View {
        VStack {
            Text("Slider value:")
            Text("\(sliderValue)")
            Text(String(format: "%.2f", sliderValue))
            Text(String(format: "%.0f", sliderValue))
            Slider(value: $sliderValue)
                .accentColor(.red)
            Slider(value: $sliderValue, in: 0...30)
                .accentColor(.green)
            Slider(value: $sliderValue, in: 0...50, step: 3)
                .accentColor(.orange)
            Slider(
                   value: $sliderValue,
                   in: 0...10,
                   step: 1
               ) {
                   Text("Speed")
               } minimumValueLabel: {
                   Text("0")
               } maximumValueLabel: {
                   Text("10")
               } onEditingChanged: { _ in
                   color = .indigo
               }
               Text("\(sliderValue)")
                .foregroundColor(color != .brown ? .red : .mint)
        }
    }
}

struct SliderBC_Previews: PreviewProvider {
    static var previews: some View {
        SliderBC()
    }
}
