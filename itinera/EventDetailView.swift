import SwiftUI

struct EventDetailView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: EventViewModel
    @State private var eventTitle = ""
    var selectedDate: Date

    var body: some View {
        VStack {
            Text("Add Event")
                .font(.title)
                .padding()

            TextField("Event Title", text: $eventTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Save Event") {
                viewModel.addEvent(title: eventTitle, date: selectedDate)
                dismiss()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}
