//
//  SpacerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 17.02.2022.
//

import SwiftUI

struct SpacerBC: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
            }
            .font(.title)
                        .padding(.horizontal)
            .background(Color.yellow)
//            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
            
            HStack(spacing: 0) {
                Spacer(minLength: 20)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                

            }
            .padding(.vertical)
            .background(Color.yellow)
        }
    }
}

struct SpacerBC_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBC()
    }
}
