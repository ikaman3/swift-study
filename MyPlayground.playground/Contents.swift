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

let possibleNumber = "123"
var convertedNumber = Int(possibleNumber)
print(type(of: 1))
print(type(of: convertedNumber))

// Forced Unrapping
if convertedNumber != nil {
    print("ㅇㅅㅇ \(convertedNumber!)")
} else {
    print("ㅇㅅㅇ;;")
}

// Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

let X: Int? = 1
if let X {
    print(X)
}

if let firstNum = Int("8"), let secondNum = Int("55"), firstNum < secondNum && secondNum < 100 {
    print("\(firstNum) < \(secondNum) < 100")
}

func canThrowAnError() throws {
    
}
do {
    try canThrowAnError()
} catch {
    
}

let Age = 3874
assert(Age >= 0, "A person's age can't be less than zero")
if Age > 10 {
    
} else if Age >= 0 {
    
} else {
    assertionFailure("A person's age can't be less than zero")
}

if (3, "김철수") < (3, "이영희") {
    print("dsklqje")
}
//(1, true) < (3, false)
(1, true) == (3, false)

// Nil-Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
userDefinedColorName = "blue"
colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

// Closed Range Operator a... <= b
for index in 0...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator a... < b
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print ("Person \(i + 1) is called \(names[i])")
}

// One-Sided Ranges
for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}
for name in names[..<2] {
    print(name)
}
let range = -5...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
for i in range {
    print(i)
}

// Multiline String Literals
let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
                please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on \
    till you come to the end; then stop."
    """
print(quotation)

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
print(threeMoreDoubleQuotationMarks)

// Working with Characters
for character in "Dog!@#$🐶" {
    print(character)
}

// String Indices
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

// Substring
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"
print("\n" + beginning)
print(type(of: beginning))
// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(newString)
print(type(of: newString))

// Prefix and Suffix Equality
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
// hasPrefix
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// hasSuffix
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// Array
//var someInts: Array<Int> = []
var someInts: [Int] = []
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")
// Creating an Array with a Default Value
var sixDoubles = Array(repeating: 0.0, count: 6)
print(sixDoubles)
// Creating Array by Adding Two Arrays Together
var anotherDoubles = Array(repeating: 6.9, count: 3)
var nineDoubles = sixDoubles + anotherDoubles
print(nineDoubles)
// Creating an Array with an Array Literal
//var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList = ["Eggs", "Milk"]
// Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList[0])
shoppingList[0] = "Six eggs"
print(shoppingList[0])
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList[0])
let mapleSyrup = shoppingList.remove(at: 0)
print(shoppingList[0])
print(mapleSyrup)
let apples = shoppingList.removeLast()
print(apples)
// Iterating Over an Array
for item in shoppingList {
    print(item)
}
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// Sets
// Creating Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")
letters = [] // letters is now an empty set, but is still of type Set <Character>
// Creating a Set with an Array Literal
//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres: Set = ["Rock", "Classical", "EDM"]
// Accessing and Modifying a Set
print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky")
} else {
    print("I have particular music preferences.")
}
favoriteGenres.insert("Jazz")
if let removedGenre = favoriteGenres.remove("EDM") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
//favoriteGenres.removeAll()
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Iterating Over a Set
for genre in favoriteGenres {
    print("\(genre)")
}
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Performing Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
// Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

// Dictionaries
// Creating an Empty Dictionary
var namesOfIntegers = [Int: String]() // [Key: Value]
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]
// Creating a Dictionary with a Dictionary Literal
//var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")
if airports.isEmpty {
    print("The airports dictionary is empty")
} else {
    print("The airports dictionary is not empty.")
}
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
// updateValue 메서드는 이전 값을 해당 딕셔너리 값 타입의 옵셔널로 리턴함
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
} else {
    print("그런 값이 없었습니다.")
}
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
} else {
    print("That airport is not in the airports dictionary")
}
airports["APL"] = "Apple International"
airports["APL"] = nil
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("THe removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
let airportCodes = [String](airports.keys)
print(airportCodes)
airports.keys.sorted()
print(airports)
airports.values.sorted()
print(airports)

// For-In Loops
for name in names {
    print("Hello, \(name)!")
}
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: 60, by: minuteInterval) {
    print(tickMark)
}
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark)
}

// While
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")

square = 0
diceRoll = 0
repeat {
    // move up or down for a snake or ladder
    square += board[square]
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
} while square < finalSquare
print("Game over!")

// Conditional Statements
// If

