import UIKit

//class Car {
//    var color = "Red"
//    var type: String
//    init(_ type: String){
//        self.type = type
//    }
//    func ride(_ miles: Int){
//        print("\(type) car is on a ride for \(miles)!")
//    }
//}
//
//var car = Car("mazda")
//car.color = "Green"
//print(car.color)
//car.ride(20)

//
//struct Shape {
//    var width : Int
//    var length : Int
//
//    func printDesc(){print("I'm a shape with \(width) and \(length)")}
//    mutating func changeWidth(_ width: Int){ self.width = width}
//}
//
//var shape = Shape(width: 20, length: 12)
//shape.printDesc()
//shape.changeWidth(23)
//print(shape.width)

class Person {
  var species = "H. Sapiens"
  var name: String
  init(name: String) {         // Note: this function doesn't get called explicitly.  It is called
                               // when creating an instance using the initialization syntax -- "Person()"
    self.name = name           // Note: the use of "self.name" here to refer to the name property
    // instead of the name parameter
  }
  func speak() {
    print("Hello! I am a \(self.species) and my name is \(self.name)")
                               // Note how we refer to the properties using "self"
  }
}
class Developer: Person {      // Note how we are specifying that Developer will inherit from Person
  var favoriteLanguage: String
    init(name: String, favoriteLanguage: String) {    // Note there is no override keyword on init because it has
        // different parameter names then the Person init method
    self.favoriteLanguage = favoriteLanguage
    super.init(name: name)
  }
//    override func speak() {                           // Note there is an override keyword on speak because it is
//        // identical to the Person speak method
//    print("Hello! I am a Developer! My name is \(self.name)")
//  }
}
var myDeveloper: Developer = Developer(name: "Jay", favoriteLanguage: "Swift")
myDeveloper.speak()
