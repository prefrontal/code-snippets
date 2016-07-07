//
//  PrimeSieve
//  Created by Craig Bennett on 7/20/15.
//

#include <cmath>
#include <iostream>
#include <vector>

/*
 * Sieve of Eratosthenes (integers)
 * Simple, ancient algorithm for finding all prime numbers up to any given limit.
 * It does so by iteratively marking as composite (i.e., not prime) the multiples
 * of each prime, starting with the multiples of 2.
 *
 * Provides a vector of integers that represent the prime numbers under the maximum value
*/
void GetPrimes (const int maximum, std::vector<int> &primes)
{
	// Clear the input vector in case there is existing data
	primes.clear();
	
	// There are no primes less than 2
	if (maximum < 2)
		return;
	
	// Construct and execute the Sieve
	const int sqrtMaximum = static_cast<int>( sqrt(static_cast<double>(maximum)) );
	std::vector<bool> primeTracker (maximum, true);
	
	for (int i = 2; i < sqrtMaximum; ++i)
	{
		if (!primeTracker[i])
			continue;
		
		for (int j = i + i; j < maximum; j += i)
		{
			if (j < 0)  // Guard against integer overflow
				break;
			
			primeTracker[j] = false;
		}
	}
	
	// Generate the list of primes to return
	for (int k = 2; k < maximum; ++k)
	{
		if (primeTracker[k] == true)
			primes.push_back (k);
	}
}

// --------------------------------------------------------------------------------

/*
 * Sieve of Eratosthenes (booleans)
 * Simple, ancient algorithm for finding all prime numbers up to any given limit.
 * It does so by iteratively marking as composite (i.e., not prime) the multiples
 * of each prime, starting with the multiples of 2.
 *
 * Provides a vector of boolean values of length maximum, with each element
 * representing whether that partuclar number is prime
*/
void GetPrimesBool (const int maximum, std::vector<bool> &primes)
{
    // Clear the input vector in case there is existing data
    primes.clear();
    
    // There are no primes less than 2
    if (maximum < 2)
        return;
    
    // Construct and execute the Sieve
    const int sqrtMaximum = static_cast<int>( sqrt(static_cast<double>(maximum)) );
    std::vector<bool> primeTracker (maximum, true);
    
    // Block out the low numbers
    primeTracker[0] = false;
    primeTracker[1] = false;
    
    for (int i = 2; i < sqrtMaximum; ++i)
    {
        if (!primeTracker[i])
            continue;
        
        for (int j = i + i; j < maximum; j += i)
        {
            if (j < 0)  // Guard against integer overflow
                break;
            
            primeTracker[j] = false;
        }
    }
    
    // Just return the tracking array instead of the actual numbers
    primes = primeTracker;
}

// --------------------------------------------------------------------------------

/*
 * Brute-force check to determine if a number is prime
 * Used to validate the Sieve results.  Could also be
 * used when the Sieve would use too much memory.
*/
bool IsPrime (const int testValue)
{
	// There are no primes less than 2
	if (testValue < 2)
		return false;
	
	bool primeState = true;
	
	for (int i = 2; i < testValue; ++i)
	{
		if ((testValue % i) == 0)
			primeState = false;
	}
	
	return primeState;
}

/*
 * Evaluate a list of prime numbers to validate that they
 * are all indeed primes.
 */
bool TestPrimes (const std::vector<int> &primes)
{
	bool testState = true;
	
	for (auto it = primes.begin(); it < primes.end(); ++it)
	{
		if (!IsPrime(*it))
			testState = false;
	}
	
	return testState;
}

int main (int argc, const char * argv[])
{
	std::vector<int> myPrimes;
	
	GetPrimes (100, myPrimes);
	std::cout << "Number of primes: " << myPrimes.size() << std::endl;
	
	const bool validPrimes = TestPrimes (myPrimes);
	std::cout << "Valid prime list: " << (validPrimes ? "True" : "False") << std::endl;
	
	return 0;
}
