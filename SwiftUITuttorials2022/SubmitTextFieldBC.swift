//
//  SubmitTextFieldBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.03.2022.
//

import SwiftUI

struct SubmitTextFieldBC: View {
    
    @State private var text = ""
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.continue)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.go)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.done)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.send)
                .onSubmit {
                    print("Some button pressed")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.join)
                .onSubmit {
                    print("Some button pressed")
                }
        }
    }
}

struct SubmitTextFieldBC_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBC()
    }
}
