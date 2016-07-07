// Find the greatest common divisor of two numbers based on Stein's Algorithm
// From: https://en.wikipedia.org/wiki/Binary_GCD_algorithm

unsigned int GreatestCommonDivisor (unsigned int u, unsigned int v)
{
    int shift;

    // GCD(0,v) == v; GCD(u,0) == u, GCD(0,0) == 0
    if (u == 0) return v;
    if (v == 0) return u;
     
    // Let shift := lg K, where K is the greatest 
    // power of 2 dividing both u and v
    for (shift = 0; ((u | v) & 1) == 0; ++shift) 
    {
        u >>= 1;
        v >>= 1;
    }
     
    while ((u & 1) == 0)
        u >>= 1;
     
    // From here on, u is always odd
    do 
    {
        // Remove all factors of 2 in v -- they are not common
        // Note: v is not zero, so while will terminate
        while ((v & 1) == 0)  // Loop X
            v >>= 1;

        // Now u and v are both odd. Swap if necessary so u <= v,
        // then set v = v - u (which is even). For bignums, the
        // swapping is just pointer movement, and the subtraction
        // can be done in-place
        if (u > v) 
        {
            unsigned int t = v; v = u; u = t;
        }  // Swap u and v.
        
        v = v - u; // Here v >= u.
        
    } while (v != 0);

    // Restore common factors of 2
    return u << shift;
}