NSString *filename = @"/this/is/my/file/name";
NSData *data = // get NSData from somewhere, like NSPropertyListSerialization

[data writeToFile: filename  atomically: NO];