import UIKit


//without recursion
func isPalindrome(_ word: String) -> Bool {
    var isPalindrome = true //flag is switched to false when it is not palindrome
    let wordArray = Array(word.lowercased()) //lowercase to easily compare characters
    for i in 0..<wordArray.count {
        let leftIndex = i
        let rightIndex = wordArray.count-1-i
        if leftIndex < rightIndex {
            if(wordArray[leftIndex] == wordArray[rightIndex]){
                continue
            }else{
                print("\(word) is not a palindrome")
                isPalindrome = false
                break
            }
        }
    }
    if isPalindrome {
        print("\(word) is a palindrome")
    }
    return isPalindrome
}

isPalindrome("Racecar")
