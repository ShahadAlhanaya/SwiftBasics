import UIKit

func tossCoin() ->  String {
    let headsOrTails = ["Heads!","Tails!"]
    let result = headsOrTails[Int.random(in: 0...1)]
    print("Tossing a Coin!")
    print(result)
    return result
}

func tossMultipleCoins(_ numOfTimes: Int) -> Double {
    var heads = 0
    var tails = 0
    for _ in 1...numOfTimes{
        let result = tossCoin()
        if result == "Heads!" {heads += 1}
        if result == "Tails!" {tails += 1}
    }
    return Double(heads)/Double(numOfTimes)
}

print("Ratio of heads to total toss: \(tossMultipleCoins(2))")


