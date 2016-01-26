// -- Arrays and Dictionaries ----------------------------------------------------------

/* Arrays */

// Implicitly Typed Arrays

    var boolArray   = [true, true, false, true]
    var intArray    = [1, 2, 3, 4]
    var doubleArray = [1.0, 2.0, 3.0, 4.0]
    var stringArray = ["A", "B", "C", "D"]

// Specifying Array Type

    var emptyArray = [String]()

// Iterate over an array

    let individualScores = [75, 43, 103, 87, 12]
    for score in individualScores
    {
        print (score)
    }

/* Dictionaries */

// Implicitly Typed Dictionaries

    var dictionaryA = [false:0, true:1]
    var dictionaryB = [1:true, 2:true, 3:false, 4:true]
    var dictionaryC = ["A":1.0, "B":2.0, "C":3.0, "D":4.0]
    var dictionaryD = [1:"A", 2:"B", 3:"C", 4:"D"]

// Specifying Dictionary Type

    var emptyDictionary = [String:Double]()

// Iterate over a dictionary

    let interestingValues = [1:"Aa", 2:"Bb", 3:"Cc", 4:"Dd"]
    for (myKey, myValue) in interestingValues
    {
            print ("\(myKey) - \(myValue)")
    }