//
//  StacksBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 17.02.2022.
//

import SwiftUI

struct StacksBC: View {
    var body: some View {
        VStack {
//            Spacer()
            HStack(spacing: 80) {
                VStack(alignment: .center, spacing: 20) {
                    Text("5")
                        .font(.largeTitle)
                        .underline()
                    
                    Text("Items in your cart")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                VStack(spacing: 40) {
                    ZStack {
                        Circle()
                            .frame(width: 80, height: 80)
                        
                        Text("1")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                        .background(
                        Circle()
                            .frame(width: 80, height: 80)
                        )
                }
            }
            Spacer()
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 500, alignment: .center)
                VStack(alignment: .leading, spacing: 30) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                    
                    HStack(alignment: .bottom) {
                        Rectangle()
                            .fill(Color.purple)
                            .frame(width: 50, height: 50)
                        
                        Rectangle()
                            .fill(Color.pink)
                            .frame(width: 75, height: 75)
                        
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 25, height: 25)
                    }
                    .background(Color.white)
                }
                .background(Color.black)
            }
        }
    }
}

struct StacksBC_Previews: PreviewProvider {
    static var previews: some View {
        StacksBC()
    }
}
