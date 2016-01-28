// -- Dictionaries ----------------------------------------------------------

/* Dictionary Creation */

	// Implicitly Typed Dictionaries

		 var dictionaryA = [false:0, true:1]
		 var dictionaryB = [1:true, 2:true, 3:false, 4:true]
		 var dictionaryC = ["A":1.0, "B":2.0, "C":3.0, "D":4.0]
		 var dictionaryD = [1:"A", 2:"B", 3:"C", 4:"D"]

	// Specifying Empty Dictionary

		 var emptyDictionary = [String:Double]()

	// Dictionary With Dictionary Literal

		var airports:[String:String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

/* Dictionary Properties */

	// Get Dictionary Count

		airports.count

	// Determine if Empty

		airports.isEmpty

/* Dictionary Modification */

	// Add Item To End

		airports["LHR"] = "London"

	// Modify Single Item By Key

		airports["LHR"] = "London Heathrow"

		let oldValue = airports.updateValue ("Dublin Airport", forKey: "DUB")

/* Dictionary Access */

	// Access Single Item By Key

		airports["DUB"]

	// Remove Single Key-Value Pair

		airports["APL"] = nil

		let removedValue = airports.removeValueForKey ("DUB")

	// Iterate Over Keys

		for airportCode in airports.keys
		{
			print("Airport code: \(airportCode)")
		}

	// Iterate Over Values

		for airportName in airports.values
		{
			print("Airport name: \(airportName)")
		}

	// Iterate Over Keys and Values

		 for (myKey, myValue) in interestingValues
		 {
					print ("\(myKey) - \(myValue)")
		 }

	// Array With Keys

		let airportCodes = [String](airports.keys)

	// Array With Values

		let airportNames = [String](airports.values)