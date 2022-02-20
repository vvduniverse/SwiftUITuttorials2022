//
//  ConditionalBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.02.2022.
//

import SwiftUI

struct ConditionalBC: View {
    
    @State var showCircle = false
    @State var showRectangle = false
    @State var isLoading = true
    
    var body: some View {
        VStack(spacing: 30) {
            
            
            Button(isLoading ? "Stop loading" : "Load again") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                Text("Loading data is completed")
            }
            
            Button("Show circle: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Show rectangle: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            if showCircle {
                Circle().frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 150, height: 100)
            }
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
            }
            Spacer()
        }
    }
}

struct ConditionalBC_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBC()
    }
}
