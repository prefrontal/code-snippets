NSString *string = ...;

NSString *URLEscapedString = [string stringByAddingPercentEncodingWithAllowedCharacters: [NSCharacterSet URLQueryAllowedCharacterSet]];