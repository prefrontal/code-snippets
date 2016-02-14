// -- Typealias --------------------------------------------------------------------------
/*

A typealias declaration introduces a named alias of an existing type into your program. 
Type alias declarations are declared using the keyword typealias and have the form:

typealias name = existing type

typealias ClosureType = (ParameterTypes) -> (ReturnType)

After a type alias is declared, the aliased name can be used instead of the existing type 
everywhere in your program. The existing type can be a named type or a compound type. 
Type aliases do not create new types; they simply allow a name to refer to an existing type.

*/
// ---------------------------------------------------------------------------------------

typealias Username = String

typealias lotteryOutputHandler = (String, Int) -> String