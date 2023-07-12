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
