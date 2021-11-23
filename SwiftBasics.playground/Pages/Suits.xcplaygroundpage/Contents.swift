import UIKit

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//dictionary will not preserve order, instead it will be ordered based on alphabetics
var deckOfCards = [String: [Int]]()
//using Array of Tuples will preserve the order
var deckOfCardsArray = [(String, [Int])]()

for key in suits {
    deckOfCards[key] = cards
    deckOfCardsArray.append((key,cards))
}

//print the dictionary
print(deckOfCards)
//print the array of tuples
print(deckOfCardsArray)
