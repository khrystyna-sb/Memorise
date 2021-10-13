//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mac on 11.10.2021.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚘", "🚛", "✈️", "🚚", "🚜", "🚝", "🛸", "🚁", "🚤", "⛵️", "🛴", "🦽", "📺", "🧨", "🚽", "🐷", "🦐", "🦃", "🌈", "🍌", "🎰"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCard: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    

    @Published private var model: MemoryGame<String> = createMemoryGame()
 
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
