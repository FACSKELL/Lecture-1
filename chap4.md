This chapter focus on the different syntax we can use with functions

# Pattern Matching

**map data to a specific pattern and deconstruct the data**.

For each data you want to match you can define a specific body for the same function:

```haskell
myFunc :: Integer -> Integer
myFunc 42 = 42
myFunc x = 0
```
Pattern matching can be applied to different type of data

**Tuple**
```haskell
multByTwo :: (Integer, Integer) -> (Integer, Integer)
multByTwo (a,b) = (a * 2, b * 2 )
```

**List comprehension**
[a+b | (a,b) <- xs]
```

**List**
```haskell
[]
(x:[])
(x:xs)
(x:y:ys)
l@(x:xs) This syntax is called "as pattern" and give the name l to the patter (x:xs)
```
Expressions are evaluated from the top to the bottom. So the order is very important!
Check that you define a catch-all pattern!

# Guards

**Guards test values to True or False. Looks like a if expression**

```haskell
isOdd :: Integer -> String
isOdd n
  | odd n = "It's odd"
  | otherwise = "It's not!"
```
otherwise is the catch-all pattern.

# Where

**where give a names to an expressions**

Block where at the end guards:

```haskell
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0
```

Block where attached to a function

```haskell
calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2
```
**Names defined in the where block are only visible in the local scope of the guards or functions**

**Where block can be nested**

# Let

**Let is similar to where but it can let you bind name to expression anywhere**

syntax: let <bindings> in <expression>. Expressions define in bindings are accessible in the in part.

In the middle of nowhere:

```haskell
4 * (let a = 9 in a + 1) + 2
```

In function:

```haskell
cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h =
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea
```

in a lis:

```haskell
[let square x = x * x in (square 5, square 3, square 2)]
```

in list comprehension (don't need the in part)

```haskell
calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]  
```
The main difference between Where and Let is that where is a syntaxic construc, let is an expression.
The scope of let is very local and won't spread around guard for example.


# Case

It's a case.

```haskell
case expression of pattern -> result  
                   pattern -> result  
                   pattern -> result  
                   ...  
```
