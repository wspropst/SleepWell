import SwiftUI

struct ContentView: View {
    @State private var morningFeedback: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Sleep Dash")
                        .font(.largeTitle)
                        .padding()

                    // Sleep Data Display
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Last Night's Sleep")
                            .font(.headline)
                        Text("Duration: 7 hours 32 minutes")
                        Text("Sleep Quality: Good")
                        Text("Heart Rate: Avg. 60 bpm")
                    }
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)

                    // Sleep Tips Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Sleep Tips")
                            .font(.headline)
                        Text("1. Stick to a sleep schedule.")
                        Text("2. Pay attention to what you eat and drink.")
                        Text("3. Create a restful environment.")
                        Text("4. Limit daytime naps.")
                        Text("5. Include physical activity in your daily routine.")
                    }
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(10)

                    // Feedback Form
                    Form {
                        Section(header: Text("Morning Feedback")) {
                            TextField("How did you feel this morning?", text: $morningFeedback)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle("Dashboard")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
