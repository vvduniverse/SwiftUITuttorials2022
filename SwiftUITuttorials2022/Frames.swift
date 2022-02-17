//
//  Frames.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.02.2022.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        VStack {
            Color(.brown)
            Text("Hello, World!")
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 150)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 300)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
            
            VStack(spacing: 0) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
        //            .frame(width: 300, height: 300, alignment: .leading)
                    .frame(maxWidth: .infinity)
                .background(Color.yellow)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
        //            .frame(width: 300, height: 300, alignment: .leading)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.yellow)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
                    .frame(alignment: .trailing)
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    .background(Color.yellow)
            }
        }
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
