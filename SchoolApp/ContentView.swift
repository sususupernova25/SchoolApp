import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var statusText = "Tap the button to confirm everything works."

    var body: some View {
        VStack(spacing: 15) {
            Text("School App")
                .font(.system(size: 32, weight: .bold))
            
            Text("Powered by Swift & macOS")
                .font(.system(size: 16))
                .foregroundColor(.gray)
            
            Text(statusText)
                .font(.system(size: 14))
                .multilineTextAlignment(.center)

            Button(action: {
                count += 1
                statusText = "Button tapped \(count) time(s)."
            }) {
                Text("Check")
                    .frame(width: 100)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(40)
        .frame(minWidth: 400, minHeight: 300)
    }
}
