// VIEW

import SwiftUI

let backgroundColor = Color(red: 60/255, green: 60/255, blue: 60/255)

struct GameView: View {
    let gameManager: GameManager
    let aspectRatio: CGFloat = 2/3
    
    var body: some View {
        AspectVGrid(gameManager.cards, aspectRatio: aspectRatio) { card in
            CardView(card: card)
        }
        .padding()
    }
}

let textColor = Color(red: 120/255, green: 80/255, blue: 80/255)

struct CardView: View {
    let borderColor = Color(red: 25/255, green: 25/255, blue: 25/255)
    let card: Card
//    let aspectRatio: CGFloat = 2/3
    
    var body: some View {
        let cardBase = RoundedRectangle(cornerRadius: 4)
        
        ZStack {
            cardBase.fill(.white)
            cardBase.strokeBorder(lineWidth: 1).foregroundStyle(borderColor)
            VStack {
                Text("\(card.id)")
                    .foregroundStyle(textColor)
            }
        }
//        .aspectRatio(aspectRatio, contentMode: .fit)
    }
    
}

#Preview {
    GameView(gameManager: GameManager())
}
