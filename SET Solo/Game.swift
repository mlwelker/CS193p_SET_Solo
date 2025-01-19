// MODEL

import Foundation

enum ShadingType: CaseIterable {
    case solid
    case striped
    case open
}

enum ShapeColor: CaseIterable {
    case red
    case green
    case purple
}

enum ShapeType: CaseIterable {
    case diamond
    case squiggle
    case oval
}

enum NumberOfSymbols: Int, CaseIterable {
    case one = 1
    case two = 2
    case three = 3
}

struct Game {
    private(set) var cards: [Card]
    
    init() {
        self.cards = generateDeck()
    }
}

struct Card: Equatable, Identifiable, Hashable {
    let shadingType: ShadingType
    let shapeColor: ShapeColor
    let shapeType: ShapeType
    let numberOfSymbols: NumberOfSymbols
    
    var isMatched: Bool
    var id: String {
        return "\(shadingType)-\(shapeColor)-\(shapeType)-\(numberOfSymbols)"
    }
}

func generateTempDeck() -> [Card] {
    var newDeck: [Card] = []
    newDeck.append(Card(shadingType: .open, shapeColor: .green, shapeType: .diamond, numberOfSymbols: .one, isMatched: false))
    newDeck.append(Card(shadingType: .solid, shapeColor: .red, shapeType: .oval, numberOfSymbols: .three, isMatched: false))
    newDeck.append(Card(shadingType: .striped, shapeColor: .red, shapeType: .squiggle, numberOfSymbols: .two, isMatched: false))
    
    return newDeck
}

private func generateDeck() -> [Card] {
    var newDeck: [Card] = []
    
    for shade in ShadingType.allCases {
        for color in ShapeColor.allCases {
            for shape in ShapeType.allCases {
                for num in NumberOfSymbols.allCases {
                    newDeck.append(
                        Card(
                            shadingType: shade,
                            shapeColor: color,
                            shapeType: shape,
                            numberOfSymbols: num,
                            isMatched: false
                        )
                    )
                }
            }
        }
    }
    
    return newDeck
}
