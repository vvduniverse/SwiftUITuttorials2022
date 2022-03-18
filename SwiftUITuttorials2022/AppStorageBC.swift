//
//  AppStorageBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 18.03.2022.
//

import SwiftUI

struct AppStorageBC: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Boris"
                currentUserName = name
            }
        }
    }
}

struct AppStorageBC_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBC()
    }
}
