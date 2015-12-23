// ---------------------------------------------------------------------------------------

Creating a Random Integer:

	// Random int between 0 and N - 1
	NSUInteger r = arc4random_uniform(N);

	// Random int between M and N
	NSUInteger r = arc4random_uniform(N - M) + M;
          
Creating a Random Double:

	srand48(time(0));
	double r = drand48();

rand48 functions, unlike arc4random functions, require an initial value to be 
seeded before generating random numbers. 

The seed function, srand48(3), should only be run once.

// ---------------------------------------------------------------------------------------
