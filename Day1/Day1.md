# Solutions to the challenge

## First n terms of the Fibonacci series

### fibonacciInfinite 

This function generates the infinite Fibonacci series, we take advantage of Haskell's lazy evaluation
to generate as many terms as we need once its called.

### fibonacciSeries

We call the previous function with an integer argument that stores how many terms ofthe Fibonacci series we want on our list. Each term is calculated recursively, instead of from previously stored values, so we incur some computational time penalty in exchange for code elegance and brevity.

## nth term of the Fibonacci series

### fibonacciTerm

This function takes an integar argument that stores the index of the term we require on an infinite list that sotres the Fibonacci series, and returns that term. The term is calculated recursively, with the seed (0,1).

## Sum of the n first terms of the Fibonacci series

### fibonacciSum

Instead of reinventing the wheel, we use the built in sum function in Haskell and call fibonacciSeries.

# Comments

We only use pattern matching for fibonacciInfinite and fibonacciTerm, since type safety of these functions assures type safety of those built using them.