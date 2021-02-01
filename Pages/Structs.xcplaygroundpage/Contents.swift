import UIKit

struct Student {
    static var classSize = 0
    var money: Int
    var name: String
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
        Student.classSize += 1
    }
    
    mutating func funding() {
        money = 100
    }
}

let ed = Student(name: "ed", money: 2)
let tylot = Student(name: "taylot", money: 1)

Student.classSize


