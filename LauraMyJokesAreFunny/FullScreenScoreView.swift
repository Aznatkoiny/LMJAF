import SwiftUI

struct FullScreenScoreView: View {
    let score: Int

    var body: some View {
        GeometryReader { proxy in
            let side = min(proxy.size.width, proxy.size.height)
            Text("\(score)")
                .font(.system(size: side * 0.7, weight: .bold, design: .rounded))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color(.systemBackground))
        .ignoresSafeArea()
    }
}

#Preview {
    FullScreenScoreView(score: 10)
}
