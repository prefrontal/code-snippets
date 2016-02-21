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