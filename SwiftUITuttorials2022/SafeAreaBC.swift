//
//  SafeAreaBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.02.2022.
//

import SwiftUI

struct SafeAreaBC: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
                        .padding(15)
                }
            }
        }
        .background(
            Color.indigo
//                .ignoresSafeArea()
        )
        
        
//        ZStack {
//            //background
//            Color.indigo
//                .ignoresSafeArea()
//
//            //foreground
//            Color.green
//
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
////            .frame(maxWidth: .infinity)
////            .background(Color.green)
////            .background(ignoresSafeAreaEdges: .all)
//
//        }
    }
}

struct SafeAreaBC_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBC()
    }
}
