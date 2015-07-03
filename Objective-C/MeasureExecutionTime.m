NSDate *start = [NSDate date];
// code...
NSDate *methodFinish = [NSDate date];
NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:start];
NSLog(@"Execution Time: %f", executionTime);