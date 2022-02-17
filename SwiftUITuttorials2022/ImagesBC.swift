//
//  Image.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.02.2022.
//

import SwiftUI

struct ImagesBC: View {
    var body: some View {
        Image("juliette")
            .resizable()
            .scaledToFill()
//            .aspectRatio(contentMode: .fit)
            .frame(width: 400, height: 600)
//            .clipped()
//            .cornerRadius(30)
//            .padding(.horizontal, 40.0)
            .clipShape(
//                Circle()
                Ellipse()
            )
        
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBC()
    }
}
