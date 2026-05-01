import SwiftUI

struct ContentView: View {

    @State private var playing = false

    var body: some View {
        ZStack {
            WebView(url: URL(string: "http://192.168.1.163:4533")!)
                .ignoresSafeArea()

            VStack {
                Spacer()

                Button {
                    playing.toggle()
                } label: {
                    Image(systemName: playing ? "pause.fill" : "play.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .clipShape(Circle())
                }
                .padding(.bottom, 30)
            }
        }
    }
}
