// -- Closures -----------------------------------------------------------------

/* Closures */

// Basic Closure Example

var numbersA = [20, 19, 7, 12]

numbersA.map ({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

// Closure with Implicit Typing

var numbersB = [20, 19, 7, 12]

let mappedNumbers = numbersB.map({ number in 3 * number })

print (mappedNumbers)

// -----------------------------------------------------------------------------

// A closure that has no parameters and return a String
var hello: () -> (String) = {
    return "Hello!"
}

hello() // Hello!

// A closure that take one Int and return an Int
var double: (Int) -> (Int) = { x in
    return 2 * x
}

double(2) // 4

// You can pass closures in your code, for example to other variables
var alsoDouble = double

alsoDouble(3) // 6

// From: https://www.weheartswift.com/closures/

// -----------------------------------------------------------------------------

// Passing functions and closures around

func testAdd (a:Int, b:Int) -> Int
{
    return a+b
}

var myFunc = testAdd

func testClose (a a:Int, b:Int, c:(Int,Int)->Int) -> Int
{
    return c(a,b)
}

let first = testClose (a:4, b:5, c:myFunc)
print (first)

let second = testClose (a:3, b:4) {x,y in return x*y}
print (second)

let third = testClose (a:5, b:3) {return $0*$1}
print (third)

var fourthClosure:(Int,Int) -> (Int) = {x,y in return x*y}
let fourth = testClose (a:5, b:4, c:fourthClosure)
print (fourth)

var fifthClosure:(Int,Int) -> (Int) = {return $0*$1}
let fifth = testClose (a:6, b:4, c:fifthClosure)
print (fifth)
