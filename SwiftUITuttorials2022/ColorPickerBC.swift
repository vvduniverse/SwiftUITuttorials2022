//
//  ColorPickerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 11.03.2022.
//

import SwiftUI

struct ColorPickerBC: View {
    
    @State private var backgroundColor = Color.indigo
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10.0)
                .foregroundColor(Color.white)
                .padding(50)
        }
    }
}

struct ColorPickerBC_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBC()
    }
}
