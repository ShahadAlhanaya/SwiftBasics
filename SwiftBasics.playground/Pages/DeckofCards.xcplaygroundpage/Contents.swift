import UIKit
import Darwin

enum Color {
    case blue
    case red
    case green
}

struct Card{
    var color: Color
    var roll: Int
    
    init(color: Color){
        self.color = color
        switch color {
        case .blue:
            roll = Int.random(in: 1...2)
        case .red:
            roll = Int.random(in: 3...4)
        case .green:
            roll = Int.random(in: 4...6)
        }
//        print("- Card created \(color): \(roll)")
    }
}

class Deck{
    var cards: [Card]
    
    init(){
        cards = [Card]()
        for i in 1...10{
            cards.append(Card(color: Color.blue))
        }
        for i in 1...10{
            cards.append(Card(color: Color.red))
        }
        for i in 1...10{
            cards.append(Card(color: Color.green))
        }
        cards.shuffle()
        print("Deck Created")
    }
    
    func isEmpty() -> Bool{
        return cards.isEmpty
    }
    
    func deal() -> Card{
        print("deal a card")
        return cards.removeLast()
    }
    
    func shuffle(){
        cards.shuffle()
        print("Shuffling")
    }
}

class Player{
    var name: String
    var hand: [Card]
    
    init(name: String){
        self.name = name
        hand = [Card]()
        print("Player is (\(name))")
    }

    func draw(deck: Deck) -> Card{
        var card = deck.deal()
        hand.append(card)
        print("\(name) drew a card: \(card.color) \(card.roll)")
        return card
    }

    func rollDice() -> Int{
        print("\(name) rolled dice")
        return Int.random(in: 1...6)
    }

    func matchingCards(color: Color, roll: Int) -> Int{
        var count = 0
        for card in hand {
            if(card.color == color && card.roll == roll){
                count += 1
            }
        }
        print("matching cards found: \(count)")
        return count
    }

}

var player = Player(name: "Shahad")
var deck = Deck()

player.draw(deck: deck)
