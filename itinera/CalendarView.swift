import SwiftUI
import CalendarKit

struct CalendarView: View {
    @State private var selectedDate = Date()
    @State private var events: [Event] = []

    var body: some View {
        VStack {
            Text("Calendar")
                .font(.largeTitle)
                .padding()

            CalendarKitView(selectedDate: $selectedDate, events: $events)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onAppear {
            // Load initial data or set up your calendar logic
            self.loadEvents()
        }
    }

    private func loadEvents() {
        // Example data, can be replaced with real data
        let exampleEvent = Event(title: "Sample Event", date: Date())
        events.append(exampleEvent)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
