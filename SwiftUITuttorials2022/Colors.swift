//
//  Colors.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 15.02.2022.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color(hue: 0.450, saturation: 0.650, brightness: 0.650)
//                Color.init(uiColor: .green)
//                Color(UIColor.systemMint)
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor1")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 20.0)
//            .shadow(color: .indigo, radius: 40, x: 20, y: 20)
            .shadow(color: Color("CustomColor1").opacity(0.3), radius: 60, x: 20, y: 20)
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
            .preferredColorScheme(.light)
    }
}
