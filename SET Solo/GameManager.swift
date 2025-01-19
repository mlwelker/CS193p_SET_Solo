// VIEWMODEL

import Foundation

@Observable class GameManager {
    private var game = createGame()
    
    private static func createGame() -> Game {
        return Game()
    }
    
    var cards: [Card] {
        return game.cards
    }
}
