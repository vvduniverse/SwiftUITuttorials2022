//
//  ListSwipeActionsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.03.2022.
//

import SwiftUI

struct ListSwipeActionsBC: View {
    
    @State private var fruits = ["apple", "banana", "lemon", "peach", "chery"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.purple)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.orange)
                        Button("Send") {
                            
                        }
                        .tint(.gray)
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBC_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBC()
    }
}
