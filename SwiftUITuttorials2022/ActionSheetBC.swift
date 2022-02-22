//
//  ActionSheetBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 22.02.2022.
//

import SwiftUI

struct ActionSheetBC: View {
    
    @State private var showActionSheet = false
    @State private var background = Color.green
    
    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            
            Button("Show action sheet(?)") {
                showActionSheet.toggle()
            }
            .confirmationDialog("Change background", isPresented: $showActionSheet, titleVisibility: .hidden) {
                Button("Red") { background = .red }
                Button("Green") { background = .green }
                Button("Blue") { background = .blue }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Select a new color")
            }
//            .confirmationDialog(
//                "Some information title",
//                isPresented: $showActionSheet,
//                titleVisibility: .visible) {
//                    Button("YES") {
//                        background = Color.yellow
//                    }
                
        }
    }
}

struct ActionSheetBC_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBC()
    }
}
