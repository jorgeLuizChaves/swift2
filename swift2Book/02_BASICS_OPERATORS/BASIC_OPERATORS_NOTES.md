# Basic Operators

### Arithmetic
- Addition (+)
- Subtraction (-)
- Division (/)
- Multiplication (*)

### Remainder

- module (%)

### Logical 
- and (&&)
- or (||)

### Shortcut
- increment
- decrement

### Range
- A..<B
- A...B

### Assignment 
- =

### Comparison
- Equal to (a == b)
- Not equal to (a != b)
- Greater than (a > b)
- Less than (a < b)
- Greater than or equal to (a >=b)
- Less than or equal to (a <= b)

### Identity
- Same Object (a === b)
- Not same Object (a !== b)


## Terminology 
- Unary
    - Increment
    - Decrement
- Binary
    - Arithmetic
- Ternary
    - Ternary Operator

### Assignment Operator

The assignment operator (a = b) initializes or updates the value of a with the value o b

```swift
let b = 10
var a = 5
a = b
// a is now equal to 10

```

Creating a tuple

```swift
let (x, y) = (1,2)
// x is equal to 1, y is equal to 2

```

String concatenation

```swift
"Hello" + " World"

```

### Nil Coalescing Operator

Also known as 'short circuit evaluation'

```swift
a != nil ? a! : b

```

shorthand:

```swift
var c = a ?? b

```

e.g.:

```swift
let defaultColorName = "Red"
var userDefaultColorName: String?

var colorNameToUse = userDefaultColorName ?? defaultColorName
```

### Range Operators

#### Closed Range Operators (a...b)

The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b. The value of a must not be greater than b.

```swift
for index in 1...5 {
	print("index \(index)")
}

```

#### half-open range operator (a..<b)

A range that runs from a to b, but does not include b.

```swift
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
	print("Person \(names[i])")
}

```

### Logical Operators

swift supports the 3 standard logical operators
- Logical NOT(!a)
- Logical AND(a && b)
- Logical OR (a || b)
