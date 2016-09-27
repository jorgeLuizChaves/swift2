# Collection Types

Swift provides 3 primary collection types:

- Arrays
    - collections of ordered values
- Sets
    - unordered collections of unique values
- Dictionaries
    - unordered collections of key-value associations.

***Collections are type safe, this means that you cannot store a wrong type into a collection by mistake.***

###Mutability of Collections

####create a mutable collection just sign it to a variable,

```swift
var numbers: [Int] = [Int]()
```

####create an immutable collection just sign it to a constant:

```swift
let oddNumbers: [Int] = [Int](1,3,5,7,9,11)
```

***note: it is good practice to create immutable collections to the compiler optimize the performance of the collections you create.***

##Array

####Create an empty Array

```swift
var someInts = [Int]()
```

####Add an element in the Array

```swift
someInts.append(3)
```

####set to zero elements

```swift
someInts = []
```

####Create an Array w/ a Default Value

```swift
var threeDoubless = [Double](count: 3, repeatedValue: 3.0)
```

####Creating an Array by adding two arrays together

```swift
var numbersOdd = [Int](count: 3, repeatedValue: 3.0)
var numbersEven=[Int](count: 2, repeatedValue: 2.0)
var allNumbers = numbersOdd + numbersEven
```

####Creating an Array with an Array Literal

```swift
var shoppingList: [String] = [“Eggs”, “Milk”] or
var shoppingList =  [“Eggs”, “Milk”]
```

###Accessing and Modifying an Array

You access and modify an array through its methods and properties, or by using subscript syntax.

####number of items:

```swift
shoppingList.count
```

####Collection empty or not, use isEmpty property

```swift
if shoppingList.isEmpty {
     print(“the collection is empty")
}
```

####Add a new element use the method append

```swift
shoppingList.append(“strawberries”)
```

####Append one or more item you can use the operator +=

```swift
shoppingList += [“Coffee”, “Water"]
```

####Retrieve an element

```swift
var firstItem = shoppingList[0]
```

####change an element in the collection

```swift
shoppingList[0] = “apple"
```

####change a range of elements:

```swift
shoppingList[4…6] = [“Bananas”, “Apples"]
```

####Insert an element at specific index:

```swift
shoppingList.insert(“Milk”, atIndex: 6)
```

####Remove an element

```swift
let mapleSyrup = shoppingList.removeAtIndex(1)
```

####Remove the final item

```swift
let lastItem = shoppingList.removeLast()
```

####Iterating Over an Array

```swift
for item in shoppingList {
     print(item)
}
```
```swift
for (index, value) in shoppingList.enumarate(){
      print(“Item \(index + 1): \(value)")
}
```

##Sets

A set stores distinct values of the same type in a collection w/ no defined ordering. You can use a set instead of an array when the order of item is important, or when you need to ensure that an item only appears once.

Hash Values for set Types

it’s necessary that your types implements Hashable protocol to provide a way to compute a hash value for itself.

####Creating and initialising an empty set

```swift
var letters = Set<Character>()
```

####Creating a Set w/ an Array Literal

```swift
var favoriteGenres: Set<String> = [“Rock”, “Classical”, “Hip hop"]
```

#####know how many elements are in the set?
A: use the count property

#####know whether a set is empty or not?
A: use the isEmpty property

#####Insert a element use the method insert(_:)

```swift
favoriteGenres.insert(“Rock”)
```

####Remove a specific element use the the remove(_:)

```swift
favoriteGenres.remove(“Rock”)
```

####Remove all elements use the method removeAll()

```swift
favoriteGenres.removeAll()
```

to check whether a set contains a particular item, use the contains(_:) method

```swift
if favoriteGenres.contains(“Funk”){
     print(“I like funk")
} else {
     print(“I don’t like funk”)
}
```

####Iterate ove a collection

You can use for-in loop

```swift
for music in musics {
     print(music)
}
```

You can organize a Set using the method sort(), which returns the set’s elements as an array sorted using the < operator.

```swift
for g in favoriteGenres.sort() {
     print(“\(genre)")
}
```

###Fundamental Set Operations

- intersect 
 	- values common to both sets
- exclusiveOr 
	- values in either set, but not both
- union
	- values in both sets.
- subtract
	- create an new set w values not in the specified set.

##Dictionaries

A dictionary Key type must conform to the Hashable protocol, like a set’s value type.

####Creating an empty dictionary

```swift
var namesOfIntegers = [Int: String]()
```

or

```swift
var namesOfIntegers: [Int: String]()
```

###Creating a Dictionary w/ a Dictionary Literal

```swift
var airports: [String: String] = [“YYZ”: “Toronto Pearson”, “DUB”: “Dublin"]
``

number of elements, use the method count

```swift
airports.count
```

use the isEmpty property as a shortcut for checking whether the count property is equal to 0.

```swift
if airports.isEmpty {
     print(“is empty")
}else {
     print(“is not empty”)
}
```

####update a value

```swift
airports[“LHR”] = “London"
```

or

```swift
airports.updateValue(“LHR”, forKey: “DUB”)
```

####Iterate over a dictionary

```swift
for (key, value) in airports {
     print(“\(airportCode): \(airportName)”)
}
```

####get only key

```swift
let airportCodes = [String] (airports.keys)
```

####get all values

```swift
let airportNames = [String] (airports.values)
``
