//
//  IntroView.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 19.03.2022.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") private var currentUserSignedIn = false
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [Color("ColorGradient2"), Color("ColorGradient1")], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
