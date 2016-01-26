// -- Tuples -----------------------------------------------------------------------------
/*

Tuples group multiple values into a single compound value. 
The values within a tuple can be of any type and do not have to be of the same type as each other.

Tuples are particularly useful as the return values of functions.

*/
// ---------------------------------------------------------------------------------------

// Basic tuple

    let http404Error = (404, "Not Found")
    
    let (statusCode, statusMessage) = http404Error
    print("The status code is \(statusCode)")
    print("The status message is \(statusMessage)")

// You can name the individual elements in a tuple when the tuple is defined:

    let http200Status = (statusCode: 200, description: "OK")
    
    print("The status code is \(http200Status.statusCode)")
    print("The status message is \(http200Status.description)")

// Ignore parts of the tuple with an underscore (_):

    let (justTheStatusCode, _) = http404Error
    
// Access the individual element values in a tuple using index numbers starting at zero:

    print("The status code is \(http404Error.0)")