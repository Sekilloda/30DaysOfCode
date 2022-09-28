# Meta
- **Programming language:** Haskell, GHC version 8.10.7

# Challenge
- **Write a function or routine that returns the number of alphabetic characters in a string**
- **Write a function or routine that returns the number of numeric digits in a string**
- **Write a function or routine that returns the sum of incidences of a supplied character in a string**
  
A string was supplied as a test case, `4$$E&95KPfjT$%TJ7#6T2%tcnS#3$^`

## Background

Character matching in Haskell is included in the `Data.Char` basic library, which includes functions (like `isAlpha`) to check for all different types of alphanumeric characters, special characters, blankspaces and punctuation.

# Solutions to the challenge

To use the `Data.Char` basic library, we use the `import Data.Char (isAlpha, isDigit)` statement at the very top of the script file.

## Number of alphabetic characters in a string

### letterCount 

This function takes a `char` list (the implicit type of a string in Haskell) and maps the `isAlpha` function to each character, which returns `True` if the character is alphabetic, in both lower and upper case. Since the output of `isAlpha` is boolean, we must compose `fromEnum` to get 0's and 1's, so that we can sum each list entry. The sum is the output of the function.

## Number of numeric digits in a string

### numberCount

This function works almost exactly as `letterCount` does, with `isDigit` in place of `isAlpha`.

## Sum of incidences of a supplied character in a string

### characterCount

We might be tempted to use the previous two schemes again, the troubles is that there's no version of `isDigit` or `isAlpha` for every possible character included in the string. So, we must improvise our own version of a character matching function.

Since the character to be matched is an input, we can use the fact that equality in Haskell works as any other function to make a "is equal to this character" function, `(n ==)` where `n` is the character to be matched. With this function replacing `isAlpha` in `letterCount` we obtain a function that counts instances of the specific character provided, as required.