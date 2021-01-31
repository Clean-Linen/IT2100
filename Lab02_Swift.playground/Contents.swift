import UIKit

var str = "Hello, playground"

let A:Double = 43.88
let B:Double = 108.99
let C:Double = 14.22
let total = A + B + C
print(total)

let isNegative: Bool = true
print(isNegative ? "It is less than 0" : "It is not a negative")


let Classes: [String] = ["Swift", "Objective-C", "HTML", "CSS", "Javascript"]
for Classes in Classes {print (Classes)}

//An Optional Value may or may not have a value

//Nil is simply a variable or object that is empty ahs no value assigned.

var reading1: Float?
var reading2: Float?
var reading3: Float?

if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
    let avgReading = (r1 + r2 + r3) / 3
    print(avgReading)
}
else{
    let errorString = "Instrument reported a reading that was nil."
    print(errorString)
}

// Assigning the optional value will stop the code from triggering a runtime error if you were to to try and unwrap it when the optional has no value.

let range: CountableClosedRange = 1...5

let count = ["a", "b", "c", "d", "e"]
count[range]

for index in range {
    print(count[index])
}

for (n, c) in (5...10).enumerated() {
    print("\(n); '\(c)'")
    
}

let name = "William"
let master = "the Swift Programming language"
let combined = "\(name) is mastering \(master)"

print("The total is \(total)")

func multiply(X: Int, Y: Int) -> Int {
    return X * Y
}
print(multiply(X: 112, Y: 64))

class Dog {
    let name : String
    let breed : String
    init(name:String, breed:String) {
        self.name = name
        self.breed = breed
    }
    func bark() {
        print("\(name) is barking")
    }
    func display() {
        print("\(name)\(breed)")
    }
}
    let goodboy = Dog(name: "Loki", breed: "Toy Poodle")
    goodboy.bark()
    goodboy.display()

