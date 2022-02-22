//
//  AlertsBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 22.02.2022.
//

import SwiftUI

struct AlertsBC: View {
    
    @State private var buttonLabel = "Show alert"
    @State private var showAlert = false
    @State private var background = Color.orange
    @State private var alertType: MyAlerts?
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            background.ignoresSafeArea()
            
            VStack {
                
                Button(buttonLabel + " 1") {
                    alertType = .error
                    
                    showAlert.toggle()
                }
                Button(buttonLabel + " 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                    getAlert()
                }
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("Your video upload failed"),
                message: Text("There is an error when uploading video")
            )
        case .success:
            return Alert(
                title: Text("Success! 🥰"),
                message: Text("Your video uploded sussessfully!"),
                dismissButton: .default(Text("Delete"), action: {
                    buttonLabel = "Brown chear!"
                    background = .indigo
                })
            )
        default :
            return Alert(title: Text("The END!")
            )
        }
    }
}

//struct AlertsBC: View {
//
//    @State private var showAlert = false
//    @State private var buttonLabel = "Show alert"
//    @State private var background = Color.orange
//    @State private var alertTitle = ""
//    @State private var alertMessage = ""
//
//    var body: some View {
//
//        ZStack {
//            background.ignoresSafeArea()
//
//            VStack {
//                //            Button("Show alert") {
//                //                showAlert.toggle()
//                //            }
//                //            .alert(isPresented: $showAlert) {
//                //                Alert(title: Text("Something goes wrong!"))
//                //            }
//
//                Button(buttonLabel + " 1") {
//                    alertTitle = "Your video upload failed"
//                    alertMessage = "There is an error when uploading vide"
//                    showAlert.toggle()
//                }
//                Button(buttonLabel + " 2") {
//                    alertTitle = "Success!🥰"
//                    alertMessage = "Your video uploded sussessfully"
//                    showAlert.toggle()
//                }
//                .alert(isPresented: $showAlert) {
//                    getAlert()
//                }
//            }
//        }
//    }
//
//    func getAlert() -> Alert {
//
//        Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
////        Alert(
////            title: Text("This is a title."),
////            message: Text("And this area for the message!"),
////            primaryButton: .cancel(),
////            secondaryButton: .destructive(Text("Delete"), action: {
////                buttonLabel = "Changed button"
////                background = Color.indigo
////            })
////        )
//    }
//}

struct AlertsBC_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBC()
    }
}
