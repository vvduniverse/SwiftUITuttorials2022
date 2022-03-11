//
//  DatePickerBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 11.03.2022.
//

import SwiftUI

struct DatePickerBC: View {
    
    @State private var currentDate = Date()
    
    let startingDate = Calendar.current.date(from: DateComponents(year: 2014)) ?? Date()
    let endingDate = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            //        DatePicker("Select a Date", selection: $currentDate)
            //        DatePicker("Select a Date", selection: $currentDate, displayedComponents: [.hourAndMinute])
            DatePicker("Select a Date", selection: $currentDate, in: startingDate...endingDate, displayedComponents: [.date])
            
                .datePickerStyle(
                    //                DefaultDatePickerStyle()
                    //                GraphicalDatePickerStyle()
                    WheelDatePickerStyle()
                )
            Text("Selected date is:".uppercased())
            Text(dateFormatter.string(from: currentDate))
                .font(.title)
        }
    }
}

struct DatePickerBC_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBC()
    }
}
