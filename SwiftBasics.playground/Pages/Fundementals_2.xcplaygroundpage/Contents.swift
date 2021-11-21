import UIKit

//Print all values from 1-255
for i in 1...255{
    print(i)
}

//Print all values from 1-100 that are divisible by 3 or 5 but not both
for num in 1...33{
    //check if number is divisible by both
    if num % 15 == 0{
        print("\(num): FizzBuzz")
    }else{
        //check if number is divisible by 3 or 5
        if num % 3 == 0{
            print("\(num): Fizz")

        }else if num % 5 == 0{
            print("\(num): Buzz")
        }
    }
}
