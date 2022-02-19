//
//  StateBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 19.02.2022.
//

import SwiftUI

struct StateBC: View {
    
    @State var backgroundColor = Color.green
    @State var title = "property wrappers test"
    @State var count = 0
    
    var body: some View {
        ZStack  {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Bytton #1") {
                        backgroundColor = .yellow
                        title = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button #2") {
                        backgroundColor = .purple
                        title = "Button 2 was pressed"
                        count -= 1
                    }
                }
                
                Button("Default") {
                    backgroundColor = .green
                    title = "Start the game again"
                    count = 0
                }
            }
        }
    }
}

struct StateBC_Previews: PreviewProvider {
    static var previews: some View {
        StateBC()
    }
}
