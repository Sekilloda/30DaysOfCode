
fibonacciInfinite :: [Integer]
fibonacciInfinite = 1:1:zipWith (+) fibonacciInfinite (tail fibonacciInfinite)

fibonacciSeries n = take n fibonacciInfinite

fibonacciTerm :: (Integral a) => a -> a    
fibonacciTerm 1 = 0
fibonacciTerm 2 = 1
fibonacciTerm n = fibonacciTerm (n-1) + fibonacciTerm (n-2)

fibonacciSum n = sum (fibonacciSeries n)