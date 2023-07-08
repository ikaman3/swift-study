import UIKit

var greeting = "Hell, playground"
var x: Int = 4
//x = 5.131
var y = 1

y = 2

var z = "Smith"
//z = 13

class Person {
    static let age = 12
    let lastName = "Smith"
}

var john = Person()
var Jen = Person()
var Bri = Person()
var Tim = Person()

let age = Person.age

let price = 1.23
var name = "Joe"
name = "Jill"

print(greeting)
print(x, y, z)

let three = 3
let p1 = 0.12321423
let p2 = Double(three)

let http404Error = (404, "404 Not Fount")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("THe status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("THe status message is \(http200Status.description)")
