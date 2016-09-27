##Control Flow

###For Loops

- for-in (performs a set of statement for each item in a sequence.)
- for (performs a set of statement until a specific condition is met, typically by incrementing a counter each time the loop ends.)

###While

- while
- repeat-while

```swift
while(num < 10) {
...
}
```

```swift
repeat{
...
}while(num < 10)
```

###Conditional Statements

- if
- switch

```swift
if(age > 20){
     print(“older than 20”)
}else{
     print(“younger”)
}
```


```swift
switch(age) {
case 10:
     print(“Ten")
case 20:
     print(“Twenty”)
default:
     print(“default value")
}
```

###Interval Matching

Values in switch cases can be checked for their inclusion in an interval. This example uses number intervals to provide a natural-language count for number of any size

```swift
switch age {
case 1..<18:
     print(“child”)
case 19..50:
     print(“adult”)
}
```

You can use Tuples in switch

```swift
let somePoint = (1,1)
switch somePoint {
     case(0,0):
          print(“(0,0) is at the origin”)
     case(_,0):
         print(“\(somePoint.0), 0 is on the x-axis”)
     default:
         print(“default value")
}
```

###Where

A switch was can use a where clause to check for additional conditions.

####Control Transfer Statements

- continue
    - tells a loop to stop
- break
- fallthrough
- return
- throw

####guard

```swift
guard let x = number else {
     print(“else condition")
return
}
print(“the number x is \(x)")
```

####checking API Availability

```swift
if #available(iOS 9, OSX 10.10, *) {
...
}else {
 ...
}
```
