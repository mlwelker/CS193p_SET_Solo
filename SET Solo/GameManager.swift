// VIEWMODEL

import Foundation

@Observable class GameManager {
    static let messages = ["Hello, world.", "42", "😄"]
    
    private var game = createGame()
    
    private static func createGame() -> Game {
        return Game()
    }
}
