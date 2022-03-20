//
//  TextSelectionBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.03.2022.
//

import SwiftUI

struct TextSelectionBC: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
    }
}

struct TextSelectionBC_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBC()
    }
}
