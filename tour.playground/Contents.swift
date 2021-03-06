//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var number = 3
var name:String = "Jonh"

//doesn't implicitly convert
//var result = name + number <- compile error
var result = name + String(number)

let apples = 3
let oranges = 5

//backslash and parenthesis to work w/ string and values.
let applesSummary = "I have \(apples) apples"
let orangesSummary = "I have \(oranges) oranges"

// working w/ an Array

var people = ["Malcon X", "Will Smith", "Tesla"]

var person = people[0]

//create an empty array
var numbers = [Int]()

//create an empty dictionary
var property = [String : String]()


//control flow

var oddNumbers = [1,2,3,4,5,6,7,8,9]

for n in oddNumbers{
    if(n % 2 == 1){
        print(n)
    }else{
        print("even")
    }
}


//Optional Values

var optionalName:String? = nil

print(optionalName == nil)

if let oName = optionalName {
    print(oName)
}else{
    print("value is nil")
}

print(optionalName ?? "no name")


let clothes = 4

//switches it is necessary to have a default case.
switch clothes {
case 3:
    print("number 3")
case 5:
    print("number 9")
case 4:
    print("number 4")
default:
    print("default")
}


//for loops
let interestingNumbers = [
"even":[2,4,6,8,10]
]


for (type,numbers) in interestingNumbers{
    print("\(type) list:")
    for number in numbers {
        print(number)
    }
}

for number in 1...100 {
    if(number % 2 == 0){
        print(number)
    }
}

for i in 0 ..< 100 {
    if(i % 2 == 0){
        print(i)
    }
}

//C like for is deprecated in swift 3
for var i=1; i < 10; i += 1 {
    print("the number is \(i)")
}

func calculateStatistics(numbers: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = numbers[0]
    var max = numbers[0]
    var sum = 0
    
    for number in numbers{
        if(number < min){
            min = number
        }
        
        if(number > max){
            max = number
        }
        
        sum += number
    }
    
    return (min, max, sum)
}


var resultStatistics = calculateStatistics([1,2,3,4,5,6,7,8])



resultStatistics.0
resultStatistics.max

//varargs
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers{
        sum += number
    }
    return sum
}

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers{
        sum += number
    }
    if(sum == 0){
        return 0
    }else{
        return sum / numbers.count
    }
}

sumOf()
var resultSumOf = sumOf(1,2,3,4)
var averageOfR = averageOf(1,2,3,4)

//nested functions
func fatorial(number: Int) -> Int {
    var fatorial = 0
    
    func calculateFatorial(number: Int, sum: Int) -> Int {
        if(number == 0){
            return sum
        }else{
            return calculateFatorial((number - 1), sum: sum * number)
        }
    }
    return calculateFatorial(number, sum: 1)
}

var resultFatorial = fatorial(5)

print(resultFatorial)


func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(n: Int) -> Int {
        return n + 1
    }
    
    return addOne
}

//returning a function as parameter
var resultMakeIncrementer = makeIncrementer()
resultMakeIncrementer(1)


//function as parameter

func hasAnyEvenValue(list: [Int], condition: (Int) -> Bool) {
    
    for number in list {
        if(condition(number)){
            print("this number \(number) is even")
        }
    }
}

let numbersX = [1,2,3,4,5,6]

func isEven(number: Int) -> Bool {
    return number % 2 == 0 ? true : false
}

hasAnyEvenValue(numbersX, condition: isEven)
print("-------")
//with closure {(n: Int) -> Bool in }
hasAnyEvenValue(numbersX, condition: {(n: Int) -> Bool in
    if(n % 2 == 0){
        return true
    }else{
        return false
    }
})

var resultNumberX = numbersX.map({n in n * 2})


print(resultNumberX)

let sortedNumber = resultNumberX.sort({$1 > $0})
print(sortedNumber)


class Person{
    private var _name: String?
    
    init(){
        
    }
    
    init(name: String){
        self.name = name
    }
    
    var name: String {
        set{
            self._name = newValue
        }
        
        get{
            return self._name ?? "no name"
        }
    }
}

var p1 = Person()
var p2 = Person(name: "Jonh")

print(p1.name)
print(p2.name)



enum Rank: Int{
    case OPS = 2
    case TWO, THREE, FOUR, FIVE, SIX, SEVEN
    
    func toName() -> String {
        switch self {
        case .FIVE:
            return "five"
        default:
            return "name"
        }
      
    }
    
    func equals(rank: Rank) -> Bool {
        return self.rawValue == rank.rawValue
    }
}

Rank.OPS.rawValue
Rank.FIVE.toName()


struct Card{
    
    func fullName() -> String {
        return "name"
    }
}

let card = Card()
card.fullName()



enum ServerResponse{
    case Result(String, String)
    case Error(String)
}

let successEnum = ServerResponse.Result("ok", "success")

switch successEnum {
case .Result:
    print("xxxx")
default:
    print("aaaa")
}


//protocol its looks like an interface in Java

protocol Eatable {
    
    func name()
}

class Banana : Eatable {
    
    init() {
    }
    
    internal func name() {
        print("its a banana")
    }
}

var banana = Banana()
banana.name()

//Extensions add new funtinality
extension Int: Eatable {
    internal func name() {
        print("int extensions")
    }
}

7.name()


//func repeatItem<T>(fruit:T, numberOfTimes: Int) -> [T] where T: Eatable {
//    
//    var result = [T] ()
//    for _ in 0..<numberOfTimes {
//        var element = T()
//        result.append(element)
//    }
//    
//    return result
//}


//WORKING WITH TUPLES

let httpResponse = (404, "Not Found")

let httpResponseError = (code: 404,message: "Not Found")

httpResponseError.code

//OPTIONAL

let possibleNumber = "123"
let wrongStringNumber = "asbc"
let numberA = Int(possibleNumber)
let numberB: Int? = Int(wrongStringNumber)

if let xb = numberB{
    print("there is a number")
}else{
    print("doesn't have a number")
}


func functionThatMayThrowsAnError() throws {
    do{
        try functionThatMayThrowsAnError()
    }catch{
        
    }
}



