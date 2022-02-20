//
//  TernaryBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.02.2022.
//

import SwiftUI

struct TernaryBC: View {
    
    @State var startingState = false
    
    var body: some View {
        VStack(spacing: 30) {
            
            Button(startingState ? "We are starting" : "We finished") {
                startingState.toggle()
            }
            
            Text(startingState ? "In the begining" : "In the end")
            
            Rectangle()
                .fill(startingState ? Color.orange : Color.indigo)
                .frame(width: startingState ? 100 : 300, height: startingState ? 50 : 50)
                .cornerRadius(startingState ? 30 : 0)
            
            Spacer()
        }
    }
}

struct TernaryBC_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBC()
    }
}
