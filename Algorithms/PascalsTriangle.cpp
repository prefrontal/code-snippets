// Algorithm to generate Pascal's triangle using a 2D array
// https://en.wikipedia.org/wiki/Pascal%27s_triangle

void PascalsTriangle (const int gridSize)
{
    // Add one since the first row and column of the square
    // are the seed values for the actual grid of numbers
    int depth = gridSize + 1;
    
    long long square[depth][depth];
    
    // Initialize the entire array
    for (int i = 0; i < depth; i++)
        for (int j = 0; j < depth; j++)
            square[i][j] = 0;
    
    // Insert first seed row and column
    for (int k = 0; k < depth; k++)
    {
        square[k][0] = 1;
        square[0][k] = 1;
    }
    
    // Now, calculate the rest of the square
    for (int m = 1; m < depth; m++)
    {
        for (int n = 1; n < depth; n++)
        {
            square[m][n] = square[m-1][n] + square[m][n-1];
        }
    }
    
}