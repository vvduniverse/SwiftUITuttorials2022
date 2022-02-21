//
//  SheetsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 21.02.2022.
//

import SwiftUI


struct SheetsBC: View {
    
    @State var isPresented = false
    
    var body: some View {
        ZStack {
            Color.indigo
                .ignoresSafeArea()
            
            Button {
                isPresented.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.indigo)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            //            .fullScreenCover(isPresented: $isPresented, content: {
            //                SecondView()
            //            })
            .sheet(isPresented: $isPresented) {
                //                Do not add logic here (conditions statements etc.)
                SecondView()
            }
        }
    }
}


struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.orange
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                //                    .background(Color.white)
                    .cornerRadius(10)
            }
            
        }
    }
}


struct SheetsBC_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBC()
        //        SecondView()
    }
}
