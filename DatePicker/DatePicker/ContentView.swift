//
//  ContentView.swift
//  DatePicker
//
//  Created by Thongchai Subsaidee on 19/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date1 = Date()
    @State private var date2 = Date()
    @State private var date3 = Date()
    @State private var date4 = Date()
    @State private var date5 = Date()
    @State private var date6 = Date()
    @State private var date7 = Date()
    @State private var date8 = Date()

    var body: some View {
        NavigationView {

            Form {
                ScrollView {
                DatePicker("Select date1", selection: $date1)
                
                DatePicker("Select date2", selection: $date2, in: ...Date())
                
                DatePicker("Select date3", selection: $date3, in: Date()...)
                
                DatePicker("Select date4", selection: $date4, in: ...Date(), displayedComponents: .date)
                
                DatePicker("Select date5", selection: $date5, in: Date()..., displayedComponents: .date)
                
                DatePicker("Select date6", selection: $date6, in: ...Date(), displayedComponents: .hourAndMinute)
                
                DatePicker("Select date7", selection: $date7, in: Date()..., displayedComponents: .hourAndMinute)
                
                DatePicker("Select date8", selection: $date8)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .labelsHidden()
                
                    DatePicker("Select date8", selection: $date8)
                        .datePickerStyle(WheelDatePickerStyle())
                        .labelsHidden()
            }
            }
            .navigationTitle("DatePicker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
