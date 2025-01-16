// VIEW

import SwiftUI

let backgroundColor = Color(red: 60/255, green: 60/255, blue: 60/255)

struct GameView: View {
    var body: some View {
        CardView()
            .padding()
            .background(backgroundColor)
    }
}

struct CardView: View {
    
    let borderColor = Color(red: 25/255, green: 25/255, blue: 25/255)
    
    var body: some View {
        let cardBase = RoundedRectangle(cornerRadius: 14)
        ZStack {
            cardBase.fill(.white)
            cardBase.strokeBorder(lineWidth: 3).foregroundStyle(borderColor)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
        }
    }
    
}

#Preview {
    GameView()
}
