// MODEL

import Foundation

enum ShadingType {
    case solid
    case striped
    case open
}

enum ShapeType {
    case diamond
    case squiggle
    case oval
}

enum NumberOfSymbols: Int {
    case one = 1
    case two = 2
    case three = 3
}

struct Game<CardContent: Equatable> {
    private(set) var cards: [Card]
    
    init() {
        self.cards = []
    }
    
    struct Card: Equatable {
        private let shadingType: ShadingType
        private let shapeType: ShapeType
        private let numberOfSymbols: NumberOfSymbols
        
        var isMatched: Bool
        let content: CardContent
    }
}
