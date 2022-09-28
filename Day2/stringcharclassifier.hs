import Data.Char (isAlpha, isDigit)
letterCount :: [Char] -> Int
letterCount n =  sum (map (fromEnum . isAlpha) n)

numberCount :: [Char] -> Int
numberCount n =  sum (map (fromEnum . isDigit) n)


characterCount :: Eq a => a -> [a] -> Int
characterCount n str = sum (map (fromEnum . (n ==)) str)