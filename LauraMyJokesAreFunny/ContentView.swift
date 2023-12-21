import SwiftUI

struct ContentView: View {
    @State private var selectedScore = 0

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select Score", selection: $selectedScore) {
                        ForEach(0..<11) { score in
                            Text("\(score)").tag(score)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
                
                Section {
                    NavigationLink(destination: FullScreenScoreView(score: selectedScore)) {
                        Text("Show Full Screen")
                    }
                }
                
                // Adding a new section for the message
                Section {
                    Text("Laura, my jokes might be a 5/10 but you... you're a 10/10")
                        .font(.subheadline) // Customize the font to your liking
                        .foregroundColor(.black) // Change the color if you like
                        .multilineTextAlignment(.center) // Center the text
                }
            }
            .navigationBarTitle("ScoreCard")
        }
    }
}
