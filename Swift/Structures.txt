// -- Structures ------------------------------------------------------------------
/*

As a general guideline, consider creating a structure when these conditions apply:

* The structure’s primary purpose is to encapsulate a few relatively simple data values.
* It is reasonable to expect that the encapsulated values will be copied rather than 
  referenced when you assign or pass around an instance of that structure.
* Any properties stored by the structure are themselves value types, which would also 
  be expected to be copied rather than referenced.
* The structure does not need to inherit properties or behavior from another existing type.

Structures are always copied when passed, while classes are passed by reference
In Swift, many basic data types such as String, Array, and Dictionary are implemented 
as structures. This means that data such as strings, arrays, and dictionaries are copied 

*/
// ---------------------------------------------------------------------------------------

// Basic Structure

    struct SomeStructure 
    {
        // structure definition goes here
    }
    
    let myStructure = SomeStructure()

// Structure with included function

    struct Card 
    {
        var rank: Rank
        var suit: Suit
    
        func simpleDescription() -> String 
        {
            return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
        }
    }

// The mutating keyword in the declaration of a method marks that it modifies the structure.