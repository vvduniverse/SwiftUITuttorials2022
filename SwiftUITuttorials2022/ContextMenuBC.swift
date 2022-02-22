//
//  ContextMenuBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 22.02.2022.
//

import SwiftUI

struct ContextMenuBC: View {
    
    @State private var background = Color.gray
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Image(systemName: "brain.head.profile")
                .font(.title)
            Text("Brain healthcare anywhere")
                .font(.headline)
            Text("We can help you at any point of the world")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(background)
        .cornerRadius(30)
        .contextMenu {
            Button {
                background = .green
            } label: {
                Text("Change to green")
            }
            Button {
                background = .orange
            } label: {
                Text("Change to orange")
            }
            Button {
                background = .red
            } label: {
                Label("Change to red", systemImage: "flame.fill")
            }
            HStack {
                Button {
                    background = .yellow
                } label: {
                    Text("Chage to yellow")
                }
                Spacer()
                Button {
                    background = .indigo
                } label: {
                    Text("Change to indigo")
                }
            }
        }
    }
}

struct ContextMenuBC_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBC()
    }
}
