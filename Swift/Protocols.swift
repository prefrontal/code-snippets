// --- Protocols ------------------------------------------------------------------------------------

// In Objective-C, protocols are declared with the “@protocol” keyword. 
// Below is an example of declaring a protocol containing one required method.

	@protocol SampleProtocol <NSObject>
 
	- (void)someMethod;
 
	@end

// In Swift, the syntax is a little different but the idea is the same.

	protocol SampleProtocol 
	{
		func someMethod()
	}
	
// Classes, enumerations, and structs can all adopt protocols.

	// Protocol definition
	protocol TabularDataSource
	{
		var numberOfRows:Int {get}
		var numberOfColumns:Int {get}
	}
	
	struct Department: TabularDataSource
	{
		var numberOfRows:Int
		{
			return people.count
		}

		var numberOfColumns:Int
		{
			return 2
		}
	}
	
// You can even conform to multiple protocols using protocol composition

	func printTable (dataSource: protocol<TabularDataSource, CustomStringConvertible>)
	{
		print ("Table: \(dataSource.description)")
	}