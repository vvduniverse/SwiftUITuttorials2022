//
//  ExtractSubviewsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.02.2022.
//

import SwiftUI

struct ExtractSubviewsBC: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            buttonsMy
        }
    }
    
    var buttonsMy: some View {
        VStack {
            ExtractedButton(title: "Lemon", count: 5, color: .yellow)
            ExtractedButton(title: "Orange", count: 89, color: .orange)
            ExtractedButton(title: "Watermelon", count: 3, color: .green)
            ExtractedButton(title: "Apple", count: 99, color: .red)
        }
    }
}

struct ExtractSubviewsBC_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBC()
    }
}

struct ExtractedButton: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text(title)
            Text("\(count)")
        }
        .padding()
        .background(color)
        .cornerRadius(15)
    }
}
