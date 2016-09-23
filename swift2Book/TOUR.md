###Swift Tour

Memory manager simplified with ACR - Automatic Reference Count

- swift was created on the solid base of foundation and cocoa.

####Simple values
- let -> reserved word to create a constant
- var -> reserved word to create a variable

```swift
let PI = 3.14
var age = 29
```

obs: *values are never implicitly converted to another type. If you need to convert a value to a different type, it need be explicitly make an instance of the desired type.*

***

You can use ```swift if let ``` w/ values that might be missing. These values are represented as optional.

```swift
var str: String? = "Hello"
if let name = str{
print(name)
}
```
***

Default Value

```swift
var name: String?
var fullName = name ?? "FullName"
```
***

####For in

```swift
for number in numbers{
	print(number)
}
```

####While

```swift
while(condition){
...
}
```

####Repeat

```swift
repeat{
...
}while(condition)
```

####Range

```swift
for n in 1...5{
...
}
```

#####Half-open range

```swift
for n 1..<5 {
...
}
```

obs: *Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values* 

***

####Function

A function can also take a variable number of arguments collection them into an array.

```swift
func sumOf(numbers: Int...) -> Int{
...
}
```

Functions are first class types. This means that a function can return another functions as its value.


