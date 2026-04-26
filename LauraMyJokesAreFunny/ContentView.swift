import SwiftUI

struct ContentView: View {
    @State private var selectedScore = 5

    private static let scoreRange = 0...10

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Select Score", selection: $selectedScore) {
                        ForEach(Self.scoreRange, id: \.self) { score in
                            Text("\(score)").tag(score)
                        }
                    }
                    .pickerStyle(.wheel)
                }

                Section {
                    NavigationLink {
                        FullScreenScoreView(score: selectedScore)
                    } label: {
                        Text("Show Full Screen")
                    }
                }

                Section {
                    Text("Laura, my jokes might be a 5/10 but you... you're a 10/10")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
            }
            .navigationTitle("ScoreCard")
        }
    }
}

#Preview {
    ContentView()
}
