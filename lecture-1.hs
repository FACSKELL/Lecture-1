sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

toDigits :: Integer -> [Integer]
toDigits n
  | n < 1                                        = []
  | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev  = reverse . toDigits

doubleFromLeft :: [Integer] -> [Integer]
doubleFromLeft [] = []
doubleFromLeft (x:[]) = [x]
doubleFromLeft (x:y:zs) = x : 2*y : doubleFromLeft(zs)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = reverse . doubleFromLeft . reverse

sumDigits :: [Integer] -> Integer
sumDigits = sum . concat . map toDigits

validate :: Integer -> Bool
validate n
  | (sumDigits . doubleEveryOther . toDigits) n `mod` 10 == 0 = True
  | otherwise                                                 = False
