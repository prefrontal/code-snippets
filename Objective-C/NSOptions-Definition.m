Rather than NS_ENUM, bitmasks should now use the NS_OPTIONS macro.

The syntax is exactly the same as NS_ENUM, but this macro alerts the compiler to how 
values can be combined with bitmask |. Again, you must be careful that all of the 
enumerated values fit within the specified type.

typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) 
{
        UIViewAutoresizingNone                 = 0,
        UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
        UIViewAutoresizingFlexibleWidth        = 1 << 1,
        UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
        UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
        UIViewAutoresizingFlexibleHeight       = 1 << 4,
        UIViewAutoresizingFlexibleBottomMargin = 1 << 5
};

Like enumerations, the NS_OPTIONS macro defines both a name and a type. However, the 
type for options should usually be NSUInteger.

From: http://nshipster.com/ns_enum-ns_options/
