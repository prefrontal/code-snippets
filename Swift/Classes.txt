// -- Classes ----------------------------------------------------------------------------
/*

Classes have additional capabilities that structures do not:

* Inheritance enables one class to inherit the characteristics of another.
* Type casting enables you to check and interpret the type of a class instance at runtime.
* Deinitializers enable an instance of a class to free up any resources it has assigned.
* Reference counting allows more than one reference to a class instance.

Classes are always passed by reference

/*
// ---------------------------------------------------------------------------------------

// Basic Class Definition

    class SomeClass 
    {
        // class definition goes here
    }

    let myClass = SomeClass()

// Class with included function

    class Shape
    {
        var numberOfSides = 0
    
        func simpleDescription() -> String
        {
            return "A shape with \(numberOfSides) sides."
        }
    }

    var shape = Shape()
    shape.numberOfSides = 7
    var shapeDescription = shape.simpleDescription()

// Class With Initializer

    class NamedShape
    {
        var numberOfSides: Int = 0
        var name: String
    
        init (name: String)
        {
            self.name = name
        }
    
        func simpleDescription() -> String
        {
            return "A shape with \(numberOfSides) sides."
        }
    }

// Use `deinit` to create a deinitializer if one is required

// Subclassing

    class Square: NamedShape
    {
        var sideLength: Double
    
        init (sideLength: Double, name: String)
        {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 4
        }
    
        func area() ->  Double
        {
            return sideLength * sideLength
        }
    
        override func simpleDescription() -> String
        {
            return "A square with sides of length \(sideLength)."
        }
    }

// Properties can have a getter and a setter

	var perimeter: Double
	{
		get
		{
			return 3.0 * sideLength
		}
		set
		{
			sideLength = newValue / 3.0
		}
	}

// If you don’t need to compute the property but still need to provide code 
// that is run before and after setting a new value, use `willSet` and `didSet`