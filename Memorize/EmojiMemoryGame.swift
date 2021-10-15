//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mac on 11.10.2021.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚘", "🚛", "✈️", "🚚", "🚜", "🚝", "🛸", "🚁", "🚤", "⛵️", "🛴", "🦽", "📺", "🧨", "🚽", "🐷", "🦐", "🦃", "🌈", "🍌", "🎰"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCard: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card: card)
    }
}
