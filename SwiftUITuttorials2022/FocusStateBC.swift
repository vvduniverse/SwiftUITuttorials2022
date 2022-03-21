//
//  FocusStateBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.03.2022.
//

import SwiftUI

struct FocusStateBC: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password = ""
//    @FocusState private var usernameInFocus: Bool
    @State private var username = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    @State private var showPassword = false
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding(.horizontal)
//                .onAppear {
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                        self.usernameInFocus = true
//                    }
//                }
            
//            SecureField(
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button {
                showPassword.toggle()
            } label: {
                Text(!showPassword ? "Show password:" : "Password is: \(password) Hide password!")
            }

            
            Button("SIGN UP! 💣") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            .buttonStyle(.borderedProminent)
            
//            Button("TOGGLE FOCUS STATE!") {
//                usernameInFocus.toggle()
//            }
//            .buttonStyle(.borderedProminent)
        }
    }
}

struct FocusStateBC_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBC()
    }
}
