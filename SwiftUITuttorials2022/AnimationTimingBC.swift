//
//  AnimationTimingBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.02.2022.
//

import SwiftUI


struct AnimationTimingBC: View {
    
    @State var isAnimated = false
    
    let timing = 10.0
    
    var body: some View {
        VStack {
            
            Button("Start") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(response: 1.0, dampingFraction: 0.6, blendDuration: 1.0), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
        }
    }
}

struct AnimationTimingBC_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBC()
    }
}
