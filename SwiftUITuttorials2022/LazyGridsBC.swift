//
//  LazyGridsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.02.2022.
//

import SwiftUI

struct LazyGridsBC: View {
    
    let columnsFix: [GridItem] = [
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
    ]
    
    let columnsFlex: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    let columnsAdaptive: [GridItem] = [
        GridItem(.adaptive(minimum: 80, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 25, maximum: 300), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(
                columns: columnsFlex,
                alignment: .center,
                spacing: 6,
                pinnedViews: .sectionHeaders) {
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.cyan)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                    }
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.cyan)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.green)
                    }
                }
        }
        
//        VStack {
//
//            ScrollView {
//                LazyVGrid(columns: columnsAdaptive) {
//                    ForEach(0..<100) { index in
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color.orange)
//                            .frame(height: 50)
//                            .overlay(Text("\(index)"))
//                    }
//                }
//            }
//            .frame(height: 300)
//
//            ScrollView {
//                LazyVGrid(columns: columnsFlex) {
//                    ForEach(0..<50) { index in
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color.green)
//                            .frame(height: 50)
//                            .overlay(Text("\(index)"))
//                    }
//                }
//            }
//            .frame(height: 300)
//
//            ScrollView {
//                LazyVGrid(columns: columnsFix) {
//                    ForEach(0..<50) { index in
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color.indigo)
//                            .frame(height: 50)
//                            .overlay(Text("\(index)"))
//                    }
//                }
//            }
//            .frame(height: 300)
//        }
    }
}

struct LazyGridsBC_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridsBC()
    }
}
