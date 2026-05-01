import SwiftUI

struct ContentView: View {

    @State private var isPlaying = false

    var body: some View {

        ZStack {

            // 🌐 NAVIDROME SERVER
            WebView(url: URL(string: "http://192.168.1.163:4533")!)
                .ignoresSafeArea()

            // 🎌 MANGA OVERLAY
            VStack {

                Spacer()

                HStack {

                    Spacer()

                    VStack(spacing: 15) {

                        Button(action: {
                            isPlaying.toggle()
                        }) {
                            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .background(.black.opacity(0.6))
                                .clipShape(Circle())
                                .shadow(color: .pink, radius: 10)
                        }

                        Button(action: {
                            // futur skip
                        }) {
                            Image(systemName: "forward.fill")
                                .foregroundColor(.white)
                                .padding()
                                .background(.black.opacity(0.6))
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                }
            }
        }
    }
}