// APP

import SwiftUI

@main
struct SET_SoloApp: App {
    @State private var gameManager = GameManager()
    
    var body: some Scene {
        WindowGroup {
            GameView(gameManager: gameManager)
        }
    }
}
