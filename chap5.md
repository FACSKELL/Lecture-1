Recursion recursion recursion recursion

**Edge conditions** are elements defined non recursively and allow the recursion to terminate.
The best way to understand recursion is to try the example below:

Maximum

```haskell
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs
```

Or better

```haskell
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs) = max x (maximum' xs)  
```

Replicate

```haskell
replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x
```

Take

```haskell
take' :: (Num i, Ord i) => i -> [a] -> [a]  
take' n _  
  | n <= 0   = []  
take' _ []     = []  
take' n (x:xs) = x : take' (n-1) xs
```

Reverse

```haskell
reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]
```

Repeat, here we don't have any edge condition. Ther result will be an infinite list

```haskell
repeat' :: a -> [a]  
repeat' x = x:repeat' x
```

Zip

```haskell
zip' :: [a] -> [b] -> [(a,b)]  
zip' _ [] = []  
zip' [] _ = []  
zip' (x:xs) (y:ys) = (x,y):zip' xs ys  
```

Elem

```haskell
elem' :: (Eq a) => a -> [a] -> Bool  
elem' a [] = False  
elem' a (x:xs)  
    | a == x    = True  
    | otherwise = a `elem'` xs
```

Quick sort

```haskell
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted
```
