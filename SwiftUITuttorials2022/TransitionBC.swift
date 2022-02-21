//
//  TransitionBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.02.2022.
//

import SwiftUI

struct TransitionBC: View {
    
    @State var showView = true
    
    var body: some View {
        ZStack {
            VStack {
                Button("Button".uppercased()) {
                    showView.toggle()
                }
                Spacer()
            
            if showView {
                
                RoundedRectangle(cornerRadius: 35)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut, value: showView)
            }
            
            }
        }
    }
}

struct TransitionBC_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBC()
    }
}
