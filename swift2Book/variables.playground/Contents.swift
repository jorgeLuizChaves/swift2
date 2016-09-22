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