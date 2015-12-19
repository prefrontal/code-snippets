// ---------------------------------------------------------------------------------------

Creating a UUID

    NSUUID *UUID = [NSUUID UUID];
	NSString *UUIDString = [UUID UUIDString];

Creating a GUID

	NSString *GUIDString = [[NSProcessInfo processInfo] globallyUniqueString];

// ---------------------------------------------------------------------------------------
