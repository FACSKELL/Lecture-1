**Some notes about Haskell**

## What is Haskell

Haskell is:
- Functional
- Pure
  - Immutable
  - No side effects
  - A same function with the same arguments will return the same outputs
- Lazy
- Typed

## Types

Haskell has the usual types : Bool, Int, Integer, Char, String. It also has some more used types:
- Pairs:
```haskell
p :: (Int, Char)
```
- List:
```haskell
l :: [Integer] -- a list is a head and a tail (x:xs)
```
## Combining functions

You can combine functions:

```haskell
 myOtherFunc (myFirstFunc a)
 ```
 Two useful operators:

 . Which correspond to the mathematic composition. The result of the fist function become the input of the second function

 $ Replace parenthesis. Everything after $ will be executed before the things before the $ (everything after $ has a higher precedence)

 Haskell load by default the Prelude module which contains a lot of useful functions

 You can find all the documentation of Haskell on Hoogle
