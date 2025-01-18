// VIEW

import SwiftUI

let backgroundColor = Color(red: 60/255, green: 60/255, blue: 60/255)

struct GameView: View {
    let gameManager: GameManager
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(GameManager.messages, id: \.self) { message in
                    CardView(content: message)
                        .padding()
                }
            }
        }
        .background(backgroundColor)
    }
}

let textColor = Color(red: 120/255, green: 80/255, blue: 80/255)

struct CardView: View {
    let borderColor = Color(red: 25/255, green: 25/255, blue: 25/255)
    let content: String
    let aspectRatio: CGFloat = 2/3
    
    var body: some View {
        let cardBase = RoundedRectangle(cornerRadius: 14)
        
        ZStack {
            cardBase.fill(.white)
            cardBase.strokeBorder(lineWidth: 3).foregroundStyle(borderColor)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(content)
                    .foregroundStyle(textColor)
            }
        }
        .aspectRatio(aspectRatio, contentMode: .fit)
    }
    
}

#Preview {
    GameView(gameManager: GameManager())
}
