typedef NS_ENUM (NSInteger, UITableViewCellStyle) 
{
    UITableViewCellStyleDefault,
    UITableViewCellStyleValue1,
    UITableViewCellStyleValue2,
    UITableViewCellStyleSubtitle
};

The first argument for NS_ENUM is the type used to store the new type. 
In a 64-bit environment, UITableViewCellStyle will be 8 bytes long–same as NSInteger. 
Make sure that the specified size can fit all of the defined values, or else an error will 
be generated. The second argument is the name of the new type (as you probably guessed). 
Inside the block, the values are defined as usual.

This approach combines the best of all of the aforementioned approaches, and even 
provides hints to the compiler for type-checking and switch statement completeness.

From: http://nshipster.com/ns_enum-ns_options/