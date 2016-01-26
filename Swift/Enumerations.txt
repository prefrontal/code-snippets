// -- Enumerations ------------------------------------------------------------------
/*

Give enumeration types singular rather than plural names, so that they read as self-evident.

*/

// Basic Enumeration

    enum CompassPoint 
    {
        case North
        case South
        case East
        case West
    }

// Enumeration with included function

    enum Rank: Int 
    {
        case Ace = 1
        case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King
        
        func simpleDescription() -> String 
        {
            switch self 
            {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
            }
        }
    }

// Enumeration with type specification

    enum Barcode 
    {
        case UPCA(Int, Int, Int, Int)
        case QRCode(String)
    }

// Use the `rawValue` property to access the raw value of an enumeration case.

