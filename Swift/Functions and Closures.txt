// -- Functions and Closures ----------------------------------------------------------

/* Functions */

// General Function

    func greet (name:String, day:String) -> String
    {
        return "Hello \(name), today is \(day)"
    }

    greet ("Bob", day:"Tuesday")

// Return a tuple

    func calculateStatistics (scores:[Int]) -> (min: Int, max: Int, sum: Int)
    {
        let min = 0
        let max = 10
        let sum = 20
    
        return (min, max, sum)
    }

// Variable number of arguments

    func sumOf (numbers: Int...) -> Int
    {
        for number in numbers
        {
            print (number)
        }
    
        return 0;
    }

// Functions can be nested
// Functions can return another function as a value
// Functions can take another function as an argument

/* Closures */

// Basic Closure Example

    var numbersA = [20, 19, 7, 12]
    numbersA.map({
        (number: Int) -> Int in
        let result = 3 * number
        return result
    })

// Closure with Implicit Typing

    var numbersB = [20, 19, 7, 12]
    let mappedNumbers = numbersB.map({ number in 3 * number })
    print (mappedNumbers)
