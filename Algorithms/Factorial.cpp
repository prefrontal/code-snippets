#include <iostream>

// Recursively calculate factorial value of an integer
int factorial (const int x) 
{
    // Check for appropriate positive value
    if (x < 0)
        return 0;    
    
    // Special case at a value of zero and one
    if ((x == 0) || (x == 1))
        return 1;
    
    // Calculate factorial
    if (x == 1) 
        return x; 

    return x * factorial (x - 1);
}

int main (int argc, char *argv[]) 
{
    // Some basic sanity checks for the algorithm
    
    bool passedTests = true;
    
    if (0 != factorial(-1))
        passedTests = false;
        
    if (1 != factorial(0))
        passedTests = false;
        
    if (1 != factorial(1))
        passedTests = false;
        
    if (120 != factorial(5))
        passedTests = false;
        
    if (3628800 != factorial(10))
        passedTests = false;
        
    std::cout << "Passed tests: " << passedTests << std::endl;
}