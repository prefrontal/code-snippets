// ---------------------------------------------------------------------------------------

Decoding JSON

NSData *data;
NSError *error = nil;
id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];

// ---------------------------------------------------------------------------------------

Encoding JSON

id object;
NSError *error = nil;
NSData *data = [NSJSONSerialization dataWithJSONObject:object options:0 error:&error];

// ---------------------------------------------------------------------------------------
