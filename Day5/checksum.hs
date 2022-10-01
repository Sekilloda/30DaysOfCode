card1=[4,5,3,9,3,1,9,5,0,3,4,3,6,4,6,7]

modifiedCard :: (Ord a, Num a) => [a] -> [a]
modifiedCard card =  [if even n then doubleEven x else x| (x,n) <- zip card [0..length card]]

doubleEven :: (Ord a, Num a) => a -> a
doubleEven x =
    if (x*2)>9
    then (x*2)-9
    else x*2

checksum :: Integral a => [a] -> IO ()
checksum card =
    if sum (modifiedCard card) `mod` 10==0
    then print "Valid card number"
    else print "Invalid card number"