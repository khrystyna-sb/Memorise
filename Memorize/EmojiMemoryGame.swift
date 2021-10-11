//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mac on 11.10.2021.
//

import Foundation

class EmojiMemoryGame {
    
    static let emojis = ["🚘", "🚛", "✈️", "🚚", "🚜", "🚝", "🛸", "🚁", "🚤", "⛵️", "🛴", "🦽", "📺", "🧨", "🚽", "🐷", "🦐", "🦃", "🌈", "🍌", "🎰"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCard: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
 
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
