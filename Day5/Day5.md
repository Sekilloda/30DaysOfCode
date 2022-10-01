# Meta
- **Programming language:** Haskell, GHC version 8.10.7

# Challenge
- **Implement the Luhn algorithm up to the check modulo 10 step**
- **Describe what changes should be made to the algorithm to use modulo n**
  
A (hopefully) fake credit card number was supplied as a test case, `4539319503436467`.

## Background

The Luhn algorithm was created by [Hans Peter Luhn](https://en.wikipedia.org/wiki/Hans_Peter_Luhn) in 1960. It's used to verify unique identification numbers, such as those in credit cards or bank accounts, through a simple checksum. The validation digit in the checksum is calculated using $10-\left(s \mod 10 \right)$, where $s$ is the sum of a modified identification number obtained by doubling every even digit if it's lesser or equal to $4$ or doubling the digit and subtracting 9 if it's greater than $5$. The required solution to this challenge skips the validation digit and only asks to check for divisibility by $10$.
# Solutions to the challenge

## Divisibility by 10 check

### doubleEven

This function does the conditional doubling described, we need to call it for even indexes of the original identification number expressed as a list.

### modifiedCard

This fucntion transforms the original identification number stored in a list to one eith the conditional doubling, to be used later in the checksum.

### checksum

This is the main function in the script, it takes the original number stored in a list and returns a console message which depends on the modified number passing or not the divisibility check.

# Comments

To implement the modulo n version of the algorithm, we need a base n numbering system, otherwise the checksum will fail. We also have the constraint that n has to be divisible by $2$, otherwise the doubling step in the algorithm fails. The extension to a base n numbering system allows the modified algorithm to work with arbitrary strings, son long as we have a mapping between the characters of the string and the digits in the numbering system.

The modification to be executed is simply a modulo n check at the final step, provided a valid base n numbering system.