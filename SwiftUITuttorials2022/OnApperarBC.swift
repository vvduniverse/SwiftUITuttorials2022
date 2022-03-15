//
//  OnApperarBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 15.03.2022.
//

import SwiftUI

struct OnApperarBC: View {
    
    @State private var myText = "Start text."
    @State private var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(.mint)
                            .frame(height: 150)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "This is the new text!"
                }
            }
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnApperarBC_Previews: PreviewProvider {
    static var previews: some View {
        OnApperarBC()
    }
}
