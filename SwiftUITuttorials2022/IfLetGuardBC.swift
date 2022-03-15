//
//  IfLetGuardBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 15.03.2022.
//

import SwiftUI

struct IfLetGuardBC: View {
    
    @State private var currentUserId: String? = "Marsha"
    @State private var displayText: String?
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
            
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserId else {
            displayText = "Error. There is no User ID!"
        return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
        
    }
}

struct IfLetGuardBC_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBC()
    }
}
