//
//  BackgroundMaterialsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.03.2022.
//

import SwiftUI

struct BackgroundMaterialsBC: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .background(Image("juliette")
                        .resizable()
                        .scaledToFill())
        .ignoresSafeArea()
    }
}

struct BackgroundMaterialsBC_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBC()
    }
}
