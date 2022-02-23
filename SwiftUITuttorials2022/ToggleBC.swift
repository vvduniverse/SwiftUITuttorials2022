//
//  ToggleBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 23.02.2022.
//

import SwiftUI

struct ToggleBC: View {
    
@State private var toggleIsOn = false
    

    var body: some View {
        VStack(spacing: 10) {
            
            Text("Toggle practicing")
                .font(.largeTitle)
            
            HStack {
                Text("Status is")
                Text(toggleIsOn ? "online" : "offline")
            }
            
            Toggle("Change online status", isOn: $toggleIsOn)
                .toggleStyle(SwitchToggleStyle(tint: Color.orange))
            
            Spacer()
        }
        .background(toggleIsOn ? Color.indigo.opacity(0.3) : Color.purple.opacity(0.5))
    }
}

struct ToggleBC_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBC()
    }
}
