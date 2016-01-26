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