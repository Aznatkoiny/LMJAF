import SwiftUI

struct FullScreenScoreView: View {
    var score: Int
    
    var body: some View {
        ZStack { // Use ZStack to allow overlaying items
            Color.white // Set the background color to white
                .edgesIgnoringSafeArea(.all) // Ignore the safe area to extend the color to the edges

            Text("\(score)")
                .font(.system(size: 200)) // Set the font size to 200 for large text
                .foregroundColor(.black) // Set the text color to black
                .offset(y: -50) // Move the text up by 50 points
        }
    }
}
