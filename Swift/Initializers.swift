// -- Initializers --------------------------------------------------------------------------
/*



*/
// ---------------------------------------------------------------------------------------


// A default property value can initialize a property

    struct Fahrenheit
    {
        var temperature = 32.0
    }

// All containers have a default initializer, invoked like so:

    var item = ShoppingListItem ()

// If you don't have a custom initializer, you can use a free memberwise initializer

    struct Size
    {
        var width = 0.0, height = 0.0
    }

    let twoByTwo = Size (width: 2.0, height: 2.0)

// Or, you can use your own custom initializer

    init ()
    {
        // perform some initialization here
    }

// Initializer with an input value

    init (fromKelvin kelvin: Double)
    {
        temperatureInCelsius = kelvin - 273.15
    }

// If a parameter name matches the property, you must prefix with self

    init (red: Double, green: Double, blue: Double)
    {
        self.red   = red
        self.green = green
        self.blue  = blue
    }

// Designated initializers are defined the same as for value types:

    init (parameters)
    {
        statements
    }

// Convenience initializers are prefixed with the convenience keyword

    convenience init(parameters)
    {
        statements
    }
