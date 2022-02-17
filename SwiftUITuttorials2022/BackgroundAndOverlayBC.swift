//
//  BackgroundAndOverlay.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 17.02.2022.
//

import SwiftUI

struct BackgroundAndOverlayBC: View {
    let colors = [Color.green, Color.blue, Color.yellow]
    var body: some View {
        VStack(spacing: 150) {

            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .background(
                Circle()
                    .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple.opacity(30), Color.purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple.opacity(50), radius: 10, x: 0.0, y: 10)
                    .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                        Text("7")
                            .font(.headline)
                            .foregroundColor(.white)
                        )
                        .shadow(color: Color.purple.opacity(50), radius: 10, x: 5, y: 5)
                    , alignment: .bottomTrailing
                    )
                )
            
            HStack(spacing: 30) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topLeading
                    )
                    .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    , alignment: .bottomTrailing
                    )
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                    .overlay(
                    Text("13")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundColor(.white)
                    )
                    .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                    )
            }
            
            HStack(spacing: 30) {
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 100, height: 100)
                
                LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 100, height: 100)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                    )
                    .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 120, height: 120, alignment: .center)
                )
            }
        }
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBC()
    }
}
