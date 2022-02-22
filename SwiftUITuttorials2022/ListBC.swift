//
//  ListBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 22.02.2022.
//

import SwiftUI

struct ListBC: View {
    
    @State private var fruits = ["apple", "banana", "lemon", "peach", "chery"]
    
    @State private var vegetables = ["artichoke", "broccoli", "cabbage", "eggplant"]
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id:\.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.red)
                }
                
                Section {
                    ForEach(vegetables, id:\.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                    .listRowBackground(Color.orange)
                } header: {
                Text("Vegetables")
            }
            }
            //            .accentColor(.indigo)
            //            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery list")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        //        .accentColor(.red)
        .foregroundStyle(Color.indigo)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: toOffset)
    }
    
    func add() {
        fruits.append("Strawbery")
    }
}

struct ListBC_Previews: PreviewProvider {
    static var previews: some View {
        ListBC()
    }
}
