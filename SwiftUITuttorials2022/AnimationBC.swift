//
//  AnimationBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.02.2022.
//

import SwiftUI

struct AnimationBC: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            
            Button {
                withAnimation(
                    Animation
                        .easeInOut(duration: 2.0)
                        .repeatForever()) {
                            isAnimated.toggle()
                        }
            } label: {
                Text("Just press this 4lw button")
            }
            
            Rectangle()
                .fill(isAnimated ? Color.indigo : Color.orange)
                .frame(width: !isAnimated ? 300 : 50,
                       height: !isAnimated ? 300 : 50)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .cornerRadius(isAnimated ? 50 : 0)
                .offset(y: isAnimated ? 400 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBC_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBC()
    }
}
