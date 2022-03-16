//
//  TapGestureBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.03.2022.
//

import SwiftUI

struct TapGestureBC: View {
    
    @State private var isSelected = false
    
    var body: some View {
        VStack(spacing: 35) {
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .orange : .mint)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Change the color Button!")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .font(.headline)
            }

            Text("TAP Gesture change the color!")
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
                .font(.headline)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBC_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBC()
    }
}
