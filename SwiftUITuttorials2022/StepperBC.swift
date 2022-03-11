//
//  StepperBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 11.03.2022.
//

import SwiftUI


struct StepperBC: View {
    
    @State private var stepperValue = 10
    
    @State private var widthValue: CGFloat = 100
    @State private var heightValue: CGFloat = 100
    
    var body: some View {
        VStack {
            Text("\(stepperValue)")
            
            Stepper("Stepper: 1", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.indigo)
                .frame(width: widthValue, height: heightValue)
            
            Stepper("Stepper width:") {
                changeWidth(amount: 10)
            } onDecrement: {
                changeWidth(amount: -10)
            }
            
            Stepper("Stepper height:") {
                changeHeight(amount: 10)
            } onDecrement: {
                changeHeight(amount: -10)
            }

        }
        .padding(50)
    }
    
    func changeWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthValue += amount
        }
    }
    
    func changeHeight(amount: CGFloat) {
        withAnimation(.easeInOut) {
            heightValue += amount
        }
    }
}

struct StepperBC_Previews: PreviewProvider {
    static var previews: some View {
        StepperBC()
    }
}
