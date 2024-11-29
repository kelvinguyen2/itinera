//
//  EventDetailView.swift
//  itinera
//
//  Created by Kelvin Nguyen on 11/28/24.
//


import SwiftUI

struct EventDetailView: View {
    @State private var eventTitle: String = ""
    var eventDate: Date

    var body: some View {
        VStack {
            Text("Add Event")
                .font(.title)
                .padding()

            TextField("Event Title", text: $eventTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                saveEvent()
            }) {
                Text("Save Event")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }

    private func saveEvent() {
        // Logic for saving an event
        print("Event \(eventTitle) saved for date \(eventDate)")
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(eventDate: Date())
    }
}
