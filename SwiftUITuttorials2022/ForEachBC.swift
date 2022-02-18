//
//  ForEachBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.02.2022.
//

import SwiftUI

struct ForEachBC: View {
    
    let girls = ["Maria", "Helen", "Anastasia", "Adel"]
    
    var body: some View {
        VStack {
            
            ForEach(girls.indices) { girl in
                Text("I want to date with \(girls[girl])")
            }
            Divider()
            ForEach(0..<12) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("My attempt umber \(index)")
                }
            }
        }
    }
}

struct ForEachBC_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBC()
    }
}
