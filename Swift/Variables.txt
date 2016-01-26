// -- Variables and Assignment ----------------------------------------------------------

// Implicitly Typed Variables

    var myBool    = true
    var myInteger = 42
    var myDouble  = 70.0
    var myString  = "TestString"

// Specifying Type Information

    var myBoolType:Bool
    var myIntegerType:Int
    var myDoubleType:Double
    var myStringType:String

// Constants

    let myConstantBool    = true
    let myConstantInteger = 42
    let myConstantDouble  = 70.0
    let myConstantString  = "TestString"

/* Arrays and Dictionaries */

// Implicitly Typed Arrays and Dictionaries

    var boolArray   = [true, true, false, true]
    var intArray    = [1, 2, 3, 4]
    var doubleArray = [1.0, 2.0, 3.0, 4.0]
    var stringArray = ["A", "B", "C", "D"]

    var dictionaryA = [false:0, true:1]
    var dictionaryB = [1:true, 2:true, 3:false, 4:true]
    var dictionaryC = ["A":1.0, "B":2.0, "C":3.0, "D":4.0]
    var dictionaryD = [1:"A", 2:"B", 3:"C", 4:"D"]

// Specifying Array and Dictionary Types

    var emptyArray = [String]()
    var emptyDictionary = [String:Double]()
    
/* Variable Miscellany */

// Numeric Literals

    let decimalInteger = 17
    let binaryInteger  = 0b10001   // 17 in binary notation
    let octalInteger   = 0o21      // 17 in octal notation
    let hexInteger     = 0x11      // 17 in hexadecimal notation
    
// Type Aliases

    typealias AudioSample = UInt16