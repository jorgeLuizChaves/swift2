//: Playground - noun: a place where people can play

import UIKit

var title = "Strings and Characters"

func changeName() -> String{
    return "otherName"
}


var str = "Walter White"
print(str)
str = changeName()
print(str)


for char in "Walter White".characters {
    print("letter \(char)")
}

//create a unique character
let exclamationMark: Character = "!"

//crete a string with an array of characters
let cat: [Character] = ["C", "a", "t","🐱"]
let catString = String(cat)


//Concatenating a string
let str1 = "Hello"
let str2 = " There"
var greeting = str1 + str2

//way 2
var greetingWay2 = "Hello"
greetingWay2 += " World"

//a character and a string, use the append() method
greeting.append(exclamationMark)

//Interpolation

var strInterpolationExample01 = "This is an example of interpolation \(4)"

var nilValue: Int?
let defaultValue = 12

var strInterpolationExample02 = "This is an example of interpolation \(nilValue ?? defaultValue)"



strInterpolationExample01.startIndex
strInterpolationExample01.endIndex
var emptyStr = String()

emptyStr.startIndex
emptyStr.endIndex

greetingWay2[greetingWay2.startIndex.successor()]
greetingWay2[greetingWay2.endIndex.predecessor()]

greetingWay2[greetingWay2.startIndex.advancedBy(2)]


greetingWay2.endIndex
greetingWay2.endIndex.predecessor()



