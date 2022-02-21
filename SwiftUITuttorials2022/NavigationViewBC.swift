//
//  NavigationViewBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.02.2022.
//

import SwiftUI

struct NavigationViewBC: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("hello, banana") {
                    SecondScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            //                .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Bunch of strings")
            //            .navigationBarHidden(true)
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    
                    NavigationLink(destination: SecondScreen()) {
                        Image(systemName: "1.square")
                    }
                    NavigationLink(destination: ThirdScreen()) {
                        Image(systemName: "2.square")
                    }
                }
                
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                        .foregroundColor(.orange)
                    Image(systemName: "flame")
                        .foregroundColor(.green)
                }
                
                //                ToolbarItem(placement: .navigationBarLeading) {
                //                    NavigationLink(destination: SecondScreen()) {
                //                        Image(systemName: "1.square")
                //                    }
                //                }
                //
                //                ToolbarItem(placement: .navigationBarLeading) {
                //                    NavigationLink(destination: ThirdScreen()) {
                //                        Image(systemName: "2.square")
                //                    }
                //                }
                //
                //                ToolbarItem(placement: .navigationBarTrailing) {
                //                    Image(systemName: "gear")
                //                        .foregroundColor(.orange)
                //                }
                //
                //                ToolbarItem(placement: .navigationBarTrailing) {
                //                    Image(systemName: "flame")
                //                        .foregroundColor(.green)
                //                }
                //
                //
                
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: SecondScreen()) {
                        Image(systemName: "1.square")
                    }
                    NavigationLink(destination: ThirdScreen()) {
                        Image(systemName: "2.square")
                    }
                    Spacer()
                    Image(systemName: "gear")
                        .foregroundColor(.orange)
                    Image(systemName: "flame")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            NavigationLink("hello, indigo") {
                ThirdScreen()
            }
            .navigationTitle("Second screen")
        }
    }
}

struct ThirdScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Close thid sheet")
                }
                Text("The END")
                    .navigationTitle("Third Screen")
                    .navigationBarHidden(true)
            }
            
        }
    }
}

struct NavigationViewBC_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBC()
        //        SecondScreen()
    }
}
