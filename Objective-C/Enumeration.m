// NSFastEnumeration

NSArray *array = ...;
for (id object in array) 
{
    // ...
}
     
// Block Enumeration
   
[anArray enumerateObjectsUsingBlock:
^(id object, NSUInteger idx, BOOL *stop)
{
    // Do something with 'object'

    if (shouldStop)
        *stop = YES;
}];


[aDictionary enumerateKeysAndObjectsUsingBlock:
^(id key, id obejct, BOOL *stop)
{
    // Do something with 'key' and 'object'

    if (shouldStop)
        *stop = YES;
}

 [aSet enumerateObjectsUsingBlock:
^(id object, BOOL *stop)
{
    // Do something with 'object

    if (shouldStop)
        *stop = YES;
}