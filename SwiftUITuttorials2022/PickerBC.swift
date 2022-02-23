//
//  PickerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 23.02.2022.
//

import SwiftUI

struct PickerBC: View {
    
    @State private var pickerSelection = "1"
    
    var body: some View {
        VStack {
            
            Picker("Age One", selection: $pickerSelection) {
                Text("1").tag("1")
                Text("2").tag("2")
                Text("3").tag("3")
                Text("4").tag("4")
                Text("5").tag("5")
            }.pickerStyle(.inline)

            Text("Age: \(pickerSelection)")
            
//            Picker("Age Two", selection: $pickerSelection) {
//                ForEach(18..<100) { age in
//                    Text("\(age)").tag("\(age)")
//                        .foregroundColor(.red)
//                }
//            }
//            .pickerStyle(WheelPickerStyle())
        }
    }
}

struct PickerBC2: View {
    
    @State private var selection = "Most Recent"
    let filerOptions = ["Most Recent", "Most Popular", "Most Liked", "Most Viewed"]
    
    var body: some View {
        Picker(selection: $selection,
               label: HStack {
            Text("Filter:")
            Text(selection)
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10),
               content: {
            ForEach(filerOptions, id: \.self) { option in
            Text(option)
                    .tag(option)
            }
        }
        )
    }
}

struct PickerBC_Previews: PreviewProvider {
    static var previews: some View {
//        PickerBC()
        PickerBC2()
    }
}
