import CalendarKit
import SwiftUI

struct CalendarKitView: View {
    @Binding var selectedDate: Date
    @Binding var events: [Event]

    var body: some View {
        CalendarView(events: events, selectedDate: $selectedDate)
            .onAppear {
                // Customize calendar view setup if needed
            }
    }
}

