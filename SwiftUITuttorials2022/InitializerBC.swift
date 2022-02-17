//
//  InitializerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 17.02.2022.
//

import SwiftUI


struct InitializerBC: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBC_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBC(count: 13, fruit: .orange)
            InitializerBC(count: 133, fruit: .apple)
        }
    }
}
