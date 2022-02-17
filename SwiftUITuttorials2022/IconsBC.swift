//
//  Icons.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.02.2022.
//

import SwiftUI

struct IconsBC: View {
    var body: some View {
        VStack(spacing: 35) {
            Image(systemName: "heart.fill")
//                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
//                .scaledToFill()
//                .font(.caption)
//                .font(.system(size: 200))
                .foregroundColor(.indigo)
//                .clipped()
            Image(systemName: "externaldrive.badge.wifi")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
            Image(systemName: "bell.circle")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)

        }
        .frame(width: 200)
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        IconsBC()
    }
}
