//
//  ScrollViewBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.02.2022.
//

import SwiftUI

struct ScrollViewBC: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) {indexH in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { indexV in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                    .overlay(Text("H is: \(indexV), V is: \(indexH)"))
                            }
                        }
                    }
                }
            }
        }
        
//        VStack(spacing: 5) {
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(0..<10) { index in
//                        RoundedRectangle(cornerRadius: 15)
//                            .fill(Color.green)
//                            .frame(width: 200)
//                            .overlay(Text("Number \(index)"))
//                    }
//                    .frame(height: 200)
//                }
//            }
//            ScrollView {
//                VStack {
//                    ForEach(0..<10) { index in
//                        RoundedRectangle(cornerRadius: 15)
//                            .fill(Color.orange)
//                            .frame(height: 300)
//                            .overlay(Text("Number \(index)"))
//                    }
//                }
//                .padding()
//            }
//        }
    }
}

struct ScrollViewBC_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBC()
    }
}
