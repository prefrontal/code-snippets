// -- Arrays ----------------------------------------------------------

/* Array Creation */

	// Implicitly Typed Arrays

		 var boolArray   = [true, true, false, true]
		 var intArray    = [1, 2, 3, 4]
		 var doubleArray = [1.0, 2.0, 3.0, 4.0]
		 var stringArray = ["A", "B", "C", "D"]

	// Specifying Empty Array

		 var emptyArray = [String]()

	// Array With Default Values

		var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

	// Array With Array Literal

		var shoppingList:[String] = ["Eggs", "Milk"]

/* Array Properties */

	// Get Array Count

		shoppingList.count

	// Determine if Empty

		shoppingList.isEmpty

/* Array Modification */

	// Add Item(s) To End

		shoppingList.append("Flour")
		shoppingList += ["Baking Powder"]
		shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

	// Insert Item Using Index

		shoppingList.insert("Maple Syrup", atIndex: 0)

	// Modify Single Item By Index

		shoppingList[0] = "Six eggs"

	// Remove Item At Index

		let mapleSyrup = shoppingList.removeAtIndex(0)

	// Remove Last Item

		let apples = shoppingList.removeLast()

/* Array Access */

	// Access Single Item By Index

		var firstItem = shoppingList[0]

	// Iterate over an array

		let individualScores = [75, 43, 103, 87, 12]
		for score in individualScores
		{
			print (score)
		}

	// Iterate With Index and Item

		for (index, value) in shoppingList.enumerate()
		{
			print ("Item \(index + 1): \(value)")
		}