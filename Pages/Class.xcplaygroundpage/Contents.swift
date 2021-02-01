import Foundation

/*
 5 difference between struct and class
 - No memberwise initializer (must create own initializer)
 - Can inherit from other classes (parent, super, child) & also have its own properties
 - Both copy and original point to the same thing, changing one changes the other
 - Deinitializers: Code that gets run when an instance is destroyed
 - Can change any variable property on class even when its created as a constant
 */

// 1
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// 2
class Poodle: Dog { // can have its own initiliazer
    init(name: String) {
        super.init(name: name, breed: "Poole") // child therfore superint()
    }
    
    override func makeNoise() {
        print("yip")
    }
}

let poppy2 = Poodle(name: "hello")
poppy2.makeNoise()

// FINAL CLASS:- no other class can inherit from it
/*
 
 final class Dog {
     var name: String
     var breed: String
     
     init(name: String, breed: String) {
         self.name = name
         self.breed = breed
     }
     
     func makeNoise() {
         print("Woof")
     }
 }
 
 */

// 3
class Singer {
    var name = "Eminem"
}

var singer = Singer()
print(singer.name)  // Eminem

var singerCopy = singer
singerCopy.name = "J Cole"

print(singer.name) // J Cole


// 4
class Person {
    var name = "Tsering Lama"
    
    init() {
        print("\(name) is alive")
    }
    
    func greeting() {
        print("Hello Im \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person = Person()
    person.greeting()
}

// 5
class VideoGame {
    var name = "Call of Duty"
}

let lol = VideoGame()
lol.name = "League of Legends"
print(lol.name)
