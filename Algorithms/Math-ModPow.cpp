// ModPow algorithm found on StackOverflow:
// From: http://stackoverflow.com/questions/8496182/calculating-powa-b-mod-n

// Original algorithm from:
// Schneier, Bruce (1996). Applied Cryptography: Protocols, Algorithms, and Source Code in C, 
// Second Edition (2nd ed.). Wiley. ISBN 978-0-471-11709-4.

#include <iostream>

// Calculate pow(a,b) mod n
// For many calculations std::pow(a,b)%n will overflow
// This template function calculates iteratively, avoiding the overflow
template <typename T>
T modpow (T base, T exp, T modulus) 
{
    base %= modulus;
    T result = 1;
    
    while (exp > 0) 
    {
        if (exp & 1) result = (result * base) % modulus;
        base = (base * base) % modulus;
        exp >>= 1;
    }
    
    return result;
}

int main(int argc, char *argv[]) 
{
    bool passedTests = true;
    
    if (1 != modpow(10, 982, 983))
        passedTests = false;
        
    std::cout << "Passed tests: " << passedTests << std::endl;
}