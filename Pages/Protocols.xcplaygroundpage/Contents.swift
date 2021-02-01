import Foundation

// Way of describing what properties and methods must have
// cant create instances of protocol

protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {  // conforms to protocol
    var id: String
}

func displayID(thing: Identifiable) {
    print("My Id is \(thing.id)")
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

let user = User(id: "11222")
user.identify()
displayID(thing: user)

// INHERITANCE - one can inherit from another (multiple protocols unlike classes)

protocol Paybale {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Paybale, NeedsTraining, HasVacation {}
