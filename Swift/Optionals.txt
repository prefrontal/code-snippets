// -- Optionals --------------------------------------------------------------------------
/*

An optional says: "There is a value, and it equals x" or "There isn’t a value at all"

The question mark indicates that the value it contains is optional, 
meaning that it might contain some Int value, or it might contain no value at all.

You set an optional variable to a valueless state by assigning it the special value nil.

*/
// ---------------------------------------------------------------------------------------

// Declaring Optionals

    var optionalBool:Bool?     = true
    var optionalInteger:Int?   = 1
    var optionalDouble:Double? = 70.0
    var optionalString:String? = "TestString"

// If you define an optional variable without providing a value, the variable set to nil 

// Set an optional variable to a valueless state

    optionalBool    = nil
    optionalInteger = nil
    optionalDouble  = nil
    optionalString  = nil

// Query the value state of an optional

    if convertedNumber != nil 
    {
        print("convertedNumber contains some integer value.")
    }

// Forced Unwrapping

    print("convertedNumber has an integer value of \(convertedNumber!)")

// Optional Binding

    if let actualNumber = Int(possibleNumber) 
    {
        print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
    } 
    else 
    {
        print("\'\(possibleNumber)\' could not be converted to an integer")
    }
    
    // No need to force unwrap actualNumber, since it definitely has a value


// Implicit Unwrapping

    let possibleString:String? = "An optional string."
    let forcedString:String = possibleString! // requires an exclamation mark
 
    let assumedString:String! = "An implicitly unwrapped optional string."
    let implicitString:String = assumedString // no need for an exclamation mark

// When working with optional values, you can write ? before operations like 
// methods, properties, and subscripting. If the value before the ? is nil, 
// everything after the ? is ignored and the value of the expression is nil.