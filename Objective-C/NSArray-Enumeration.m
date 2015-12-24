// NSFastEnumeration

NSArray *array = ...;
for (id object in array) 
{
    // ...
}
     
// Block Enumeration
   
[array enumerateObjectsUsingBlock:
^(id obj, NSUInteger idx, BOOL *stop) 
{
  // ...
}];