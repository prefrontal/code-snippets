// -- Sets ----------------------------------------------------------

/* Set Creation */

	// Empty Set Creation

		var letters = Set<Character>()

	// Set Using Array Literal

		var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]


/* Set Properties */

	// Get Set Count

		favoriteGenres.count

	// Determine if Empty

		favoriteGenres.isEmpty

	// Determine if Set Contains Item

		favoriteGenres.contains ("Funk")

/* Set Modification */

	// Add New Item

		favoriteGenres.insert ("Jazz")

	// Remove Item

		favoriteGenres.remove ("Rock")

		let removedGenre = favoriteGenres.remove ("Rock")

/* Set Access */

	// Iterate Over Set

		for genre in favoriteGenres
		{
			print("\(genre)")
		}

	// Iterate Over Sorted Set

		for genre in favoriteGenres.sort()
		{
			print("\(genre)")
		}

/* Set Comparison */

	// Intersection, Common To Both Sets

		oddDigits.intersect(evenDigits).sort()

	// Exclusive Or, In Either Set But Not Both

		oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()

	// Union, All Vaues In All Sets

		oddDigits.union(evenDigits).sort()

	// Subtract, Values Not In Specified Set

		oddDigits.subtract(singleDigitPrimeNumbers).sort()

	// Equal, Contain All The Same Values

		oddDigits == alsoOddDigits

	// Superset, Contains All Values Of Specified Set

		farmAnimals.isSupersetOf(houseAnimals)

	// Subset, All Values Contained In Specified Set

		houseAnimals.isSubsetOf(farmAnimals)

	// Strict Superset, Superset But Not Equal

		farmAnimals.isStrictSupersetOf(houseAnimals)

	// Strict Subset, Subset But Not Equal

		houseAnimals.isStrictSubsetOf(farmAnimals)

	// Disjoint, No Common Values

		farmAnimals.isDisjointWith (cityAnimals)