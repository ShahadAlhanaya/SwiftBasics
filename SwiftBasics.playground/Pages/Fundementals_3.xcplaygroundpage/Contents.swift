import UIKit

//Write a program that adds the numbers 1-255 to an array
var array: [Int] = [Int]()
for i in 1...255{
    array.append(i)
}

//Swap two random values in the array
let randomIndex1 = generateRandom()
let randomIndex2 = generateRandom()
array.swapAt(randomIndex1, randomIndex2)

//Write the code that swaps random values 100 times
for _ in 1...100{
    let randomIndex1 = generateRandom()
    let randomIndex2 = generateRandom()
    print(randomIndex1)
    print(randomIndex2)
    array.swapAt(randomIndex1, randomIndex2)
}

//Remove the value "42" from the array and Print
//I am confident that 42 exist so I force unwrapped the value returend by firstIndex()
let indexOf42 = Int(array.firstIndex(of: 42)!)
array.remove(at: indexOf42)
print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(indexOf42)")


//function to avoid repeating the code ;D!
func generateRandom() -> Int{
    return Int(arc4random_uniform(UInt32(array.count-1)))
}


