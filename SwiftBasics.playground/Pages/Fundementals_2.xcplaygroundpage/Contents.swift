import UIKit

//Part 1
//Print all values from 1-255
for i in 1...255{
    print(i)
}

//Part 2
//Prints all of the values from 1-100 that are divisible by 3 or 5 but not both
for num in 1...100{
    //Least common denominator of 3 and 5 is 15, that makes multiples of 15 are divisable by both 3 and 5
    //so in case the number is not divisable by both check whether it is divisable by 3 or 5
    if(num % 15 != 0){ // this is equivelant to num % 3 == 0 && num % 5 == 0  :3!
        if num % 3 == 0{
            print(num)
        }else if num % 5 == 0{
            print(num)
        }
    }
}

//Part 3
//Print all values from 1-100 that are divisible by 3 or 5 but not both
for num in 1...100{
    //check if number is divisible by both (aka 15)
    if num % 15 == 0{
        print("\(num): FizzBuzz")
    }else if num % 3 == 0{
        print("\(num): Fizz")
    }else if num % 5 == 0{
        print("\(num): Buzz")
    }
}
