NSString *ook = @"\n \t\t hello there \t\n  \n\n";

NSString *trimmed = [ook stringByTrimmingCharactersInSet:
                    [NSCharacterSet whitespaceAndNewlineCharacterSet]];

NSLog(@"trimmed: '%@'", trimmed);