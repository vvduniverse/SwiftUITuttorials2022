//
//  TabViewBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 12.03.2022.
//

import SwiftUI

struct TabViewBC: View {
    
    @State private var selectedTab = 0
    
    let icons = ["car.fill", "bus.fill", "ferry.fill", "bicycle", "figure.walk"]
    
    var body: some View {
        
        VStack(spacing: 50) {
            
            TabView {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.indigo)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.mint)
            }
            .frame(height: 250)
            .tabViewStyle(PageTabViewStyle())
            
            TabView {
                ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .padding(50)
                }
            }
            .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.indigo]), center: .center, startRadius: 5, endRadius: 250))
            .frame(height: 250)
            .tabViewStyle(PageTabViewStyle())
        }
        
//        TabView(selection: $selectedTab) {
//            ButtonView(selectedTab: $selectedTab)
//
//            Text("Second TAB")
//                .tabItem {
//                    Image(systemName: "scanner.fill")
//                    Text("Scanner")
//                }
//                .tag(1)
//
//            Text("Third TAB")
//                .tabItem {
//                    Image(systemName: "macpro.gen3.fill")
//                    Text("MacPro")
//                }
//                .tag(2)
//
//            Text("Forth TAB")
//                .tabItem {
//                    Image(systemName: "iphone.homebutton.circle.fill")
//                    Text("Iphone")
//                }
//                .tag(3)
//        }
    }
}


struct TabViewBC_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBC()
    }
}

struct ButtonView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            VStack {
                Text("First TAB")
                
                Button {
                    selectedTab = 3
                } label: {
                    Text("Go to Iphone-tab")
                        .padding()
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .tabItem {
            Image(systemName: "airtag.radiowaves.forward.fill")
            Text("Airtag")
        }
        .tag(0)
    }
}
