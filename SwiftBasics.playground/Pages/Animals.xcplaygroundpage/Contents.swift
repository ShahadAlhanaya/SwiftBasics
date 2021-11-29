import UIKit

//================================================//
class Animal{
    let name:  String
    var health = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth(){
        print("Health: \(health)/100")
    }
    
}
//================================================//
class Cat: Animal{
    
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        if health >= 10{
            health -= 10
            print("Running: -10")
        }else{
            print("no enough health!")
        }
    }
}
//================================================//
class Lion: Cat{
    override init(name: String){
        super.init(name: name)
        self.health = 200
    }
    override func growl(){
        print("ROAR!!!! I am the King of the Jungle")
    }
}
//================================================//
class Cheetah: Cat{
    override func run(){
        if health >= 50{
            health -= 50
            print("Running Fast: -50")
        }else{
            print("no enough health!")
        }
    }
    
    func sleep(){
        if health >= 150 {
            health = 200
        }else{
            health += 50
        }
    }
}
//================================================//

var cheetah = Cheetah(name: "Big Meow")
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()

var lion = Lion(name: "King")
lion.run()
lion.run()
lion.run()
lion.growl()
cheetah.displayHealth()


