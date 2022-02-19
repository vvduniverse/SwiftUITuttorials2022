//
//  ExtractedFuctionsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 19.02.2022.
//

import SwiftUI

struct ExtractedFuctionsBC: View {
    
    @State var backgroundColor = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contenArea
        }
    }
    
    var contenArea: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me".capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
        }
        
    }
    
    func buttonPressed() {
        backgroundColor = .indigo
    }
}

struct ExtractedFuctionsBC_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFuctionsBC()
    }
}
