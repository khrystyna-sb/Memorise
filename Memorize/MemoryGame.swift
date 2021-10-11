//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mac on 11.10.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    func choose(card: Card) {
        
    }
    
    init(numberOfPairsOfCard: Int, createCardContent: (Int) -> CardContent ) {
        cards = []
        for pairIndex in 0..<numberOfPairsOfCard {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatch: Bool = false
        var content: CardContent
    }
}
