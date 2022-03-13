//
//  DocumentationBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 13.03.2022.
//

import SwiftUI

struct DocumentationBC: View {
    
    // MARK: PROPERTIES
    
    @State private var data = ["Apples", "Limons", "Oranges", "Pamelas", "Cucumbers"]
    @State private var showAlert = false
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("ALERT", action: {
                        showAlert.toggle()
                    })
                    )
                    .alert(isPresented: $showAlert) {
                        getAlert(text: "This is the alert!")
                    }
            }
        }
    }
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi) -> Alert(title: Text("Hi))
    /// ```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String)-> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEWS

struct DocumentationBC_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBC()
    }
}
