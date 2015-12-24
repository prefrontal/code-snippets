// NSFastEnumeration

for (id key in [dictionary allKeys]) 
{
	id value = dictionary[key];
	// ... 
}
      
// Block Enumeration
          
[dictionary enumerateKeysAndObjectsUsingBlock:
^(id key, id obj, BOOL *stop) 
{
	// ...
}];