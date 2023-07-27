import UIKit
import SwiftUI

/*
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
let temperatureInCelsius = 25
let weatherAdvice: String
if temperatureInCelsius <= 0 {
    weatherAdvice = "It's very cold. Consider wearing a scarf."
} else if temperatureInCelsius >= 30 {
    weatherAdvice = "It's really warm. Don't forget to wear sunscreen."
} else {
    weatherAdvice = "It's not that cold. Wear a T-shirt."
}
print(weatherAdvice)
//let freezeWarning: String? = if temperatureInCelsius <= 0 {
//    "It's below freezing. Watch for ice!"
//} else {
//    nil
//}
// Switch
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}
// No Implicit Fallthrough, 실행 가능한 구문이 없으면 컴파일 에러
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Interval Matching
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Tuples 첫번째 일치하는 케이스 사용
let somePoint = (0, 0)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y): // anotherPoint의 모든 케이스와 일치하여 default가 필요없음
    print("somewhere else at (\(x), \(y))")
}
// Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is ob the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is ob the line x == -y")
case let (x, y):
    print("(\(x), \(y)) isjust some arbitrary point")
}
// Compound Cases
//let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}
let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance , 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}
// Control Transfer Statements
// continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Break(loop의 break는 같음)
// Break in a Switch Statement
let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// Fallthrough
let integerToDescribe = 2
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Labeled Statements
//let finalSquare = 25
//var board = [Int](repeating: 0, count: finalSquare + 1)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
square = 0
diceRoll = 0
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop // 라벨이 없었다면 switch 문이 종료됨
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop // 라벨없어도 괜찮음
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")
// Early Exit
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hell \(name)")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "C"])
// Deferred Actions
var score = 1
if score < 10 {
    defer {
        print(score)
    }
    score += 5
}
score = 3
if score < 100 {
    score += 100
    defer {
        score -= 100
    }
    print(score)
}
print(score)
if score < 10 {
    defer {
        print(score)
    }
    defer {
        print("The score is:")
    }
    score +=  5
}
// Checking API Availability
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

@available(macOS 10.12, *)
struct ColorPreference {
    var bestColor = "blue"
}
func chooseBestColor() -> String {
    guard #available(macOS 10.12, *) else {
        return "gray"
    }
    let colors = ColorPreference()
    return colors.bestColor
}
print(chooseBestColor())
if #available(iOS 10, *) {
} else {
    // Fallback code
}

if #unavailable(iOS 10) {
    // Fallback code
}

// Functions
func greet1(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
// Defining and Calling Functions
func greetAgain(person: String) -> String {
    return "Hello agian, " + person + "!"
}
print(greetAgain(person: "Anna"))
// Function Parameters and Return Values
// Functions Without Parameters
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// Functions With Multiple Parameters
func greet2(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet1(person: person)
    }
}
print(greet2(person: "Tim", alreadyGreeted: true))
// Functions Without Return Values
func greet(person: String) { // Void(()로 쓰여진 빈 튜플) 타입을 리턴함.
    print("Hello, \(person)!")
}
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "Hell, World!")
printWithoutCounting(string: "Hell, World!")
// FUnctions with Multiple Return Values
//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//print("min is \(bounds.min) and max is \(bounds.max)")
// Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
// Functions With an Implicit Return
// 함수 전체 본문이 한줄로 표현된다면 암시적으로 반환할 수 있다.
func greeting(for person: String) -> String {
    "Hell, " + person + "!"
}
print(greeting(for: "Dave"))
func anotherGreeting(for person: String) -> String {
    return "Hell, " + person + "!"
}
print(anotherGreeting(for: "Dave"))
// Function Argument Labels and Parameter Names
// Specifying Argument Labels
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Omitting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
// Default Parameter Values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
// Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4)
arithmeticMean(1, 2, 3, 4, 8.35, 75.2313123, 3131)
// In-Out Parameters
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Function Types
// 이 두 함수의 타입은 (Int, Int) -> Int => “함수는 모두 Int 타입인 2개의 파라미터를 가지며 Int 타입을 반환합니다.”
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
func printHellWorld() { // () -> Void
    print("Hell, World!")
}
// Using Function Types
// “2개의 Int 값과 Int 를 반환하는 함수’ 의 타입을 가지는 mathFunction 이라는 변수를 정의합니다. addTwoInts 라는 함수를 참조하기 위해 새로운 변수에 설정 하십시오.”
var mathFuncion: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFuncion(2, 3))")
mathFuncion = multiplyTwoInts
print("Result: \(mathFuncion(2, 3))")
let anotherMathFunction = addTwoInts // Type inference 가능
// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// Function Types as Return Types
/*
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
print("Counting to zero: ")
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("Zero!")
*/
// Nested Functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("Zero!")

// Clousures
// The Sorted Method
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)
// Closure Expression Syntax
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
// Inferring Type From Context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
// Implicit Returns from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
// Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 })
// Operator Methods
reversedNames = names.sorted(by: >)
// Trailing Closures
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}
someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}
reversedNames = names.sorted() { $0 > $1 }
reversedNames = names.sorted { $0 > $1 }
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
/*
func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
    if let picture = download("photo.jpg", from: server) {
        completion(picture)
    } else {
        onFailure()
    }
}
loadPicture(from: someServer) { picture in
    someView.currentPicture = picture
} onFailure: {
    print("Couldn't download the next picture.")
}
*/
// Capturing Values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen(), incrementByTen(), incrementByTen(), incrementByTen())
let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven(), incrementBySeven(), incrementBySeven(), incrementBySeven())
// Closures Are Reference Types
let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())
// Escaping Closures
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}
class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
completionHandlers.first?()
print(instance.x)
class SomeOtherClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { [self] in x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}
// Autoclosures
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print("Now serving \(customerProvider())!")
print(customersInLine.count)
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) })
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
// Prints "Collected 2 closures."
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}

// Enumerations
// Enumeration Syntax
enum CompassPoint {
    case north
    case south
    case east
    case west
}
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
var directionToHead = CompassPoint.west
directionToHead = .north
// Matching Enumeration Values with a Switch Statement
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
// Iterating over Enumeration Cases
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
for beverage in Beverage.allCases {
    print(beverage)
}
// Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCASDSADA")
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}
// Raw Values
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
// Implicitly Assigned Raw Values
enum intPlanet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum stringCompassPoint: String {
    case north, south, east, west
}
let earthsOrder = intPlanet.earth.rawValue
let sunsetDirection = stringCompassPoint.north.rawValue
// Initializing from a Raw Value
let possiblePlanet = intPlanet(rawValue: 7)
print(type(of: possiblePlanet))
let positionToFind = 11
if let somePlanet = intPlanet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// Recursive Enumerations
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))

// Structures and Classes
// Definition Syntax
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
// Structure and Class Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()
// Accessing Properties
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Memberwise Initializers for Structure Types
let vga = Resolution(width: 640, height: 480) // 클래스 인스턴스는 멤버별 초기화를 받지 않음
// Strictures and Enumerations Are Value Types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")
enum anotherCompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = anotherCompassPoint.south
let rememberedDirection = currentDirection
currentDirection.turnNorth()
print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// Identity Operators
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

// Properties
// Stored Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6
// Stored Properties of Constant Structure Instances
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6
// Lazy Stored Properties
class DataImporter {
    var filename = "data.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.filename)
// Stored Properties and Instance Variables
// Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initalSquareCenter = square.center
print(initalSquareCenter)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Shorthand Setter Declaration
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
// Shorthand Getter Declaration
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
// Read-Only Computed Properties: setter를 생략하면 된다.
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double { width * height * depth } // 암시적 return을 사용한 Read-Only Computed Property
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume)
// Property Observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 3200
// Property Wrappers
@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { number }
        set { number = min(newValue, 12) }
    }
}
struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}
var rectangle = SmallRectangle()
print(rectangle.height)
rectangle.height = 11
print(rectangle.height)
rectangle.height = 1231123
print(rectangle.height)
struct OtherSmallRectangle {
    private var _width = TwelveOrLess()
    private var _height = TwelveOrLess()
    var height: Int {
        get { _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { _width.wrappedValue }
        set { _width.wrappedValue = newValue}
    }
}
// Setting Inital Values for Wrapped Properties
@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int
    var wrappedValue: Int {
        get { number }
        set { number = min(newValue, maximum) }
    }
    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}
struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}
var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width)
struct UnitRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber var width: Int = 1
}
var unitRectangle = UnitRectangle()
print(unitRectangle.height, unitRectangle.width)
struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
}
var narrowRectangle = NarrowRectangle()
print(narrowRectangle.height, narrowRectangle.width)
narrowRectangle.height = 100
narrowRectangle.width = 100
print(narrowRectangle.height, narrowRectangle.width)
struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}
var mixedRectangle = MixedRectangle()
print(mixedRectangle.height)
mixedRectangle.width = 20
mixedRectangle.height = 20
print(mixedRectangle.width)
print(mixedRectangle.height)
// Projecting a Value From a Property Wrapper
@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool
    var wrappedValue: Int {
        get { number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }
    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()
someStructure.someNumber = 4
print(someStructure.$someNumber)
someStructure.someNumber = 55
print(someStructure.$someNumber)

enum Size {
    case small, large
}
struct SizedRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
    mutating func resize(to size: Size) -> Bool {
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 100
        }
        return $height || $width
    }
}
var s1 = SizedRectangle()
print(s1.width, s1.height)
print(s1.resize(to: .small))
print(s1.width, s1.height)
print(s1.resize(to: .large))
print(s1.width, s1.height)
//Global and Local Variables
func someFunction() {
    @SmallNumber var myNumber: Int
    myNumber = 10
    print(myNumber)
    print($myNumber)
    myNumber = 24
    print(myNumber)
    print($myNumber)
}
someFunction()
// Type Properties
// Type Propertiy Syntax
struct otherStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int { 1 }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int { 6 }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int { 27 }
    class var overrideableComputedTypeProperty: Int { 107 }
}
print(otherStructure.storedTypeProperty)
otherStructure.storedTypeProperty = "Another value."
print(otherStructure.storedTypeProperty)
print(SomeEnumeration.computedTypeProperty)
print(SomeClass.computedTypeProperty)
// Querying and Setting Type Properties
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()
leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)
rightChannel.currentLevel = 113141
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)
 
// Methods
// Instance Methods
class Counter {
    var count = 0
    func increment() {
        self.count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()
// The self Property
//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool { self.x > x }
//}
//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOf(x: 1.0) {
//    print("This point is to the right of the line where x == 1.0")
//}
// Modifying Value Types from Within Instance Methods
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool { self.x > x }
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
let fixedPoint = Point(x: 3.0, y: 3.0)
//fixedPoint.moveBy(x: 2.0, y: 3.0)
// Assigning to self Within a Mutating Method
/* 위의 구조체와 동일 = 새로운 프로퍼티로 인스턴스를 생성하고 self를 대체함
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
} */
enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
print(ovenLight)
ovenLight.next()
print(ovenLight)
ovenLight.next()
print(ovenLight)
// Type Methods
class SomeClass {
    class func someTypeMethod() {
        print("SomeClass Type Method")
    }
}
SomeClass.someTypeMethod()
struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    static func unlock(_ level: Int) { if level > highestUnlockedLevel { highestUnlockedLevel = level } }
    static func isunlocked(_ level: Int) -> Bool { level <= highestUnlockedLevel }
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isunlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}
class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}

// Subscripts
// Subscript Syntax
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int { multiplier * index }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Subscript Usage
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2
print(numberOfLegs)
// Subscript Options
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool { row >= 0 && row < rows && column >= 0 && column < columns }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
//matrix[3, 3] = 44.121 // 범위를 넘으면 assert
// Type Subscripts
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet { Planet(rawValue: n)! }
}
let mars = Planet[4]
print(mars)

// Inheritance
// Defining a Base Class
class Vehicle {
    var currentSpeed = 0.0
    var description: String { "traveling at \(currentSpeed) miles per hour" }
    func makeNoise() {  }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
// Subclassing
class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 3
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")
// Overriding Methods
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
        super.makeNoise()
    }
}
let train = Train()
train.makeNoise()
// Overriding Properties
// Overriding Property Getters and Setters
class Car: Vehicle {
    var gear = 1
    override var description: String { super.description + " in gear \(gear)" }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")
// Overriding Property Observers
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet { gear = Int(currentSpeed / 10.0) + 1 }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// Preventing Overrides
// final 수정자를 작성한다(final var, final func, final class, final subscript)

// Initialization
// Setting Initial Values for Stored Properties
// Initializers
/*
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature) ℉") */
// Default Property Values: 프로퍼티가 항상 같은 초기값을 갖는다면 초기화 구문보다 기본값이 더 효율적이다.
struct Fahrenheit {
    var temperature = 32.0
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature) ℉")
// Customizing Initialization
// Initialization Parameters
/*
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print(boilingPointOfWater.temperatureInCelsius, freezingPointOfWater.temperatureInCelsius) */
// Parameter Names and Argument Labels
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//let veryGreen = Color(0.0, 1.0, 0.0)
// Initializer Parameters Without Argument Labels
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius(37.0)
print(bodyTemperature.temperatureInCelsius)
// Optional Property Types
/*
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese." */
// Assigning Constant Properties During Initialization
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
beetsQuestion.response = "I also like beets. (But not with cheese.)"
// Default Initializers
/*
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
// Memberwise Initializers for Structure Types
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
let zeroByTwo = Size(height: 2.0)
let zeroByZero = Size()
print(twoByTwo, zeroByTwo, zeroByZero) */
// Initializer Delegation for Value Types
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init() {} // return Rect(Point(x: 0.0, y: 0.0), Size(width: 0.0, height: 0.0))
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
print(basicRect, originRect, centerRect)
// Class Inheritance and Initialization
// Designated Initializers and Convenience Initializers
// Syntax for Designated and Convenience Initializers
/*
init(<#parameters#>) {
   <#statements#>
}
convenience init(<#parameters#>) {
   <#statements#>
} */
// Initializer Delegation for Class Types
// Two-Phase Initialization
// Initializer Inheritance and Overriding
class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")
class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")
class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // super.init() implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}
let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)")
// Designated and Convenience Initializaers in Action
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
let namedMeat = Food(name: "Bacon")
let mysteryMeat = Food()
class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}
var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6)
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}
// Failable Initializers
let wholeNumber: Double = 12345.0
let pi = 3.14159
if let valueMaintained = Int(exactly: wholeNumber) {
    print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")
}
let valueChanged = Int(exactly: pi)
if valueChanged == nil {
    print("\(pi) conversion to Int does not maintain value")
}
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature = Animal(species: "Giraffe")
if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}
let anonymousCreature = Animal(species: "")
if anonymousCreature == nil {
    print("The anonymous creature could not be initialized")
}
// Failable Initializers for Enumerations
enum TemperatureUnit {
    case kelvin, celsius, fahrengeit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrengeit
        default:
            return nil
        }
    }
}
let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("This is not a defined temperature unit, so initialization failed.")
}
// Failable Initializers for Enumerations with Raw Values
enum TemperatureUnit2: Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}
let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
if fahrenheitUnit2 != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
let unknownUnit2 = TemperatureUnit2(rawValue: "X")
if unknownUnit2 == nil {
    print("This is not a defined temperature unit, so initialization failed.")
}
// Propagation of Initialization Failure
class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}
if let twoSocks = CartItem(name: "sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}
if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    print("Unable to initialize zero shirts")
}
if let oneUnnamed = CartItem(name: "", quantity: 1) {
    print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
} else {
    print("Unable to initialize one unnamed product")
}
// Overriding a Failable Initializer
class Document {
    var name: String?
    init() {}
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}
class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")!
    }
}
// Required Initializers
class SomeClass {
    required init() {
        
    }
}
class SomeSubclass: SomeClass {
    required init() {
        
    }
}
// Setting a Default Property Value with a Closure or Function
/*
 class SomeClass {
 let someProperty: SomeType {
    return someValue
 }()
 }
 */
struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}
let board = Chessboard()
print(board.squareIsBlackAt(row: 0, column: 1))
print(board.squareIsBlackAt(row: 7, column: 7))
*/

// Deinitialization: 클래스만 가능
// How Deinitalization Works
/*
 deinit {
    perform the deinitialization
 }

// Deinitalizars in Action
class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}
class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}
var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse)")
print("There are now \(Bank.coinsInBank) coins left in the bank")
playerOne!.win(coins: 2_000)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
print("The bank now only has \(Bank.coinsInBank) coins left")
playerOne = nil
print("PlayerOne has left the game")
print("The bank now has \(Bank.coinsInBank) coins")

// Optional Chaining
// Optional Chaining as Alternative to Forced Unwrapping
/*
class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}
let john = Person()
//let roomCount = john.residence!.numberOfRooms
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
    print(type(of: roomCount))
    print(type(of: john.residence?.numberOfRooms))
} else {
    print("Unable to retrieve the number of rooms.")
} */
// Defining Model Classes for Optional Chaining
class Person {
    var residence: Residence?
}
class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get { rooms[i] }
        set { rooms[i] = newValue }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}
class Room {
    let name: String
    init(name: String) { self.name = name }
}
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
// Accessing Properties Through Optional Chaining
let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress
func createAddress() -> Address {
    print("Function was called.")
    let someAddress = Address()
    someAddress.buildingNumber = "30"
    someAddress.street = "Bcacia Road"
    return someAddress
}
john.residence?.address = createAddress()
// Calling Methods Through Optional Chaining
if john.residence?.printNumberOfRooms() != nil {
    print("It Was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}
if (john.residence?.address = someAddress) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}
// Accessing Subscripts Through Optional Chaining
if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}
john.residence?[0] = Room(name: "Bathroom")
let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnsHouse
if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}
// Accessing Subscripts of Optional Type
var testScores = ["Dave": [86, 82, 84], "Bev":  [79, 94, 81]]
testScores["Dave"]?[0] = 91 // Success
testScores["Bev"]?[0] += 1 // Success
testScores["Brian"]?[0] = 72 // Fail
// Linking Multiple Levels of Chaining
if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
john.residence?.address = johnsAddress
if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// Chaining on Methods with Optional Return Values
if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    print("John's building identifier is \(buildingIdentifier).")
}
if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("John's building identifier begins with \"The\".")
    } else {
        print("John's building identifier does not begin with \"The\".")
    }
}

// Error Handling
// Representing and Throwing Errors
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)
// Handling Errors
// Propagating Errors Using Throwing Functions
func canThrowErrors() throws -> () {}

struct Item {
    var price: Int
    var count: Int
}
class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}
let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}
struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}
// Handling Errors Using Do-Catch
/*
do {
    try <#expression#>
    <#statements#>
} catch <#pattern 1#> {
    <#statements#>
} catch <#pattern 2#> where <#condition#> {
    <#statements#>
} catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
    <#statements#>
} catch {
    <#statements#>
} */
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Success! Yum.")
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(coinsNeeded: let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
} catch {
    print("Unexpected error: \(error).")
}
func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch is VendingMachineError {
        print("Couldn't buy that from the vending machine.")
    }
}
do {
    try nourish(with: "Beef-Flavored Chips")
} catch {
    print("Unexpected non-vending-machine-related error: \(error)")
}
func eat(item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
        print("Invalid selection, out of stock, or not enough money.")
    }
}
// Converting Errors to Optional Values
func someThrowingFunction() throws -> Int {
    return 10;
}
let x = try? someThrowingFunction()
let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}
print(type(of: x), type(of: y))
/*
func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
} */
// Disabling Error Propagation
//let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
// Specifying Cleanup Actions
/*
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }
        while let line = try file.readline() {
            // Work with the file.
        }
        // close(file) is called here, at the end of the scope.
    }
} */
 
// Concurrency
/* Swift의 언어 지원 없이 작성한 동시성 코드
listPhotos(inGallery: "Summer Vacation") { photoNames in
    let sortedNames = photoNames.sorted()
    let name = sortedNames[0]
    downloadPhoto(named: name) { photo in
        show(photo)
    }
} */
// Defining and Calling Asynchronous Functions
/*
func listPhotos(inGallery name: String) async throws -> [String] {
    let result = //... some asynchronous networking code ...
    return result
}
let photoNames = await listPhotos(inGallery: "Summer Vacation")
let sortedNames = photoNames.sorted()
let name = sortedNames[0]
let photo = await downloadPhoto(named: name)
show(photo)
let firstPhoto = await listPhotos(inGallery: "Summer Vacation")[0]
add(firstPhoto toGallery: "Road Trip")
// At this point, firstPhoto is temporarily in both galleries.
remove(firstPhoto fromGallery: "Summer Vacation") */
/*
func move(_ photoName: String, from source: String, to destination: String) {
    add(photoName, to: destination)
    remove(photoName, from: source)
}
//...
let firstPhoto = await listPhotos(inGallery: "Summer Vacation")[0]
move(firstPhoto, from: "Summer Vacation", to: "Road Trip") */
/* 네트워크 작업 대기를 시뮬레이션하기 위해 sleep을 사용하는 함수
 func listPhotos(inGallery name: String) async throws -> [String] {
     try await Task.sleep(until: .now + .seconds(2), clock: .continuous)
     return ["IMG001", "IMG99", "IMG0404"]
 } */
// Asynchronous Sequences
/*
import Foundation
let handle = FileHandle.standardInput
for try await line in handle.bytes.lines {
    print(line)
}
print("얘가 먼저 처리됨 ㅇㅇ") */
// Calling Asynchronous Functions in Parallel
/* 갤러리에서 처음 세 장의 사진을 가져옴.
 단점: 다운로드가 비동기이고 진행되는 동안 다른 작업을 수행할 수 있지만 downloadPhoto에 대한 호출운 한 번에 하나만 실행됨. 각 사진은 다음 사진이 다운로드를 시작하기 전에 완료된다. 그러나 이것을 기다릴 필요가 없다. 각 사진은 개별적으로 또는 동시에 다운로드 할 수 있다.
let firstPhoto = await downloadPhoto(named: photoNames[0])
let secondPhoto = await downloadPhoto(named: photoNames[1])
let thirdPhoto = await downloadPhoto(named: photoNames[2])

let photos = [firstPhoto, secondPhoto, thirdPhoto]
show(photos) */
/* 비동기 함수를 호출하고 주변의 코드와 병렬로 실행하려면 상수를 정의할 때 let 앞에 async 를 작성하고 상수를 사용할 때마다 await 를 작성합니다.
 downloadPhoto(named:) 을 호출하는 세가지는 모두 이전 호출이 완료되길 기다리지 않고 시작됩니다.
 코드가 함수의 결과를 기다리기 위해 일시 중단되지 않기 때문에 이러한 함수 호출 중 어느 것도 await 로 표시하지 않습니다.
 photos 가 정의된 라인까지 실행이 계속됩니다 — 이 시점에서 프로그램은 이러한 비동기 호출의 결과를 필요로 하므로 세 장의 사진이 모두 다운로드 될 때까지 실행을 일시 중단하기 위해 await 를 작성합니다.
async let firstPhoto = downloadPhoto(named: photoNames[0])
async let secondPhoto = downloadPhoto(named: photoNames[1])
async let thirdPhoto = downloadPhoto(named: photoNames[2])

let photos = await [firstPhoto, secondPhoto, thirdPhoto]
show(photos) */
// Tasks and Task Groups
/*
await withTaskGroup(of: Data.self) { taskGroup in
    let photoNames = await listPhotos(inGallery: "Summer Vacation")
    for name in photoNames {
        taskGroup.addTask { await downloadPhoto(named: name) }
    }
} */
// Unstructured Concurrency
/*
let newPhoto = // ... some photo data ...
let handle = Task {
    return await add(newPhoto, toGalleryNamed: "Spring Adventures")
}
let result = await handle.value */
// Task Cancellation
// Actors
/*
actor TemperatureLogger {
    let label: String
    var measurements: [Int]
    private(set) var max: Int

    init(label: String, measurement: Int) {
        self.label = label
        self.measurements = [measurement]
        self.max = measurement
    }
}
let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
print(await logger.max)
extension TemperatureLogger {
    func update(with measurement: Int) {
        measurements.append(measurement)
        if measurement > max {
            max = measurement
        }
    }
} */
// Sendable Type
/*
struct TemperatureReading: Sendable {
    var measurement: Int
}

extension TemperatureLogger {
    func addReading(from reading: TemperatureReading) {
        measurements.append(reading.measurement)
    }
}

let logger = TemperatureLogger(label: "Tea kettle", measurement: 85)
let reading = TemperatureReading(measurement: 45)
await logger.addReading(from: reading)

struct TemperatureReading {
    var measurement: Int
}

struct FileDescriptor {
    let rawValue: CInt
}


@available(*, unavailable)
extension FileDescriptor: Sendable { } */
*/

// Macros
// Freestanding Macros
func myFunction() {
    print("Currently running \(#function)")
    #warning("Something's wrong")
}
