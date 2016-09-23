##String and Characters

####String concatenation

```swift
var str1 = “Hello"
var str2 = “ World"
```

*String interpolation* -> is a process where you insert constants, variables, literals, and expressions into longer strings, this process is known as string interpolation.

In Swift every string is composed of encoding-independent Unicode characters, and provides support for accessing those characters in various Unicode representations.

####String Literals

A string literal is a fixed sequence of textual characters surrounded by a pair of doubles quotes (“”).

```swift
let someString = “Some string literal value"
//Empty String
var emptyString = “"
var anotherEmptyString = String()
//to find out whether a string is empty, verify the property isEmpty
if emptyString.isEmpty {
print(“is empty")
}
```

####String Mutability

You indicate whether a particular String can be modified (or mutated) by assigning it to a variable (in which case it can be modified), or to a constant (in which case it cannot be modified)

```swift
var variableString = “Horse"
variableString += “ and carriage"
// variableString is now “Horse and carriage"
let constantString = “Highlander"
constantString += “ and another Highlander"
// compile time error a constant cannot be modified
```

####String are value types

If you create a new String value, ***that String value is copied when it is passed to a function or method***, or when it is assigned to a constant or variable.
Swift’s copy-by-default String behaviour ensures that when a function or method passes you a String value, it is clear that you own that exact String value, regardless of where it came from. ***You can be confident that the string you are passed will not be modified unless you modify it yourself.***

####Working w/ Characters

access all characters values for a String in a for-in loop:

```swift
for char in “Dog!”.characters {
     print(char)
}
```

create a unique character using annotation type:

```swift
let exclamationMark: Character = “!"
```

obs: String values can be constructed by passing an array of Character values as an argument to its initializer:

```swift
let cat: [Characters] = [“C”, “a”, “t”,”🐱"]
let catString String(cat)
```

####Concatenating

There some ways to concatenate a string

way 1:

```swift
let str1 = “hello"
let str2 = “ there"
var greeting = str1 + str2
```

way 2:

```swift
let str1 = “hello"
str1 += “ there"
```

You can append a Character value to a String variable w/ the String type’s ***append()*** method, the opposite is not true.

```swift
var welcome = “welcome"
let exclamationMark: Character = “!"
welcome.append(exclamationMark)
```

####String Interpolation

String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal. Each item that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash

```swift
var age = 29
let myAge = “my age is \(age)"
```

Unicode

Unicode is an international standard for encoding, representing, and processing text in different writing system.

Special Characters in String Literals

- ***\0*** null
- ***\\*** backslash
- ***\t*** horizontal tab
- ***\n*** line feed
- ***\r*** carriage return
- ***\”*** double quotes
- ***\’*** single quotes

####Counting Characters

```swift
let str = “Jonh Connor"
print(str.characters.count)
```

####Accessing and Modifying a String

You access and modify a string through its methods and properties, or by using subscript syntax.

####Insert and Removing

To insert a character into a string at a specified index, use the ***insert(_: atIndex:)***

```swift
var welcome = “hello"
welcome.insert(“!”, atIndex: welcome.endIndex)
```

To insert the contents of another string at a specified index, use ***insertContentsOf(_:at:)***

```swift
welcome.insertContentsOf(“ there”.characters, at: welcome.endIndex.predecessor())
```

To remove a character from a string at a specified index, sue the ***removeAtIndex(_:)*** method.

```swift
var str = "Brazil"
str.removeAtIndex(welcome.endIndex.predecessor())
```

To remove a substring at a specified range, use the ***removeRange(_: )*** method:

```swift
let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)
```

####Comparing strings

Swift provides 3 ways to compare textual values: string and character
equality, prefix equality, and suffix equality.

- string and character equality
    - ***==*** equal to
    - ***!=*** not equal to
- prefix equality
    - ***hasPrefix***
- suffix equality
    - ***hasSuffix***

####Unicode

- UTF-8
- UTF-16