
# FACWHAT?

FACSKELL is the Founders & Coders Haskell Club. We are currently learning Haskell by reading [CIS 194: Introduction to Haskell (Spring 2013)](http://www.seas.upenn.edu/~cis194/spring13/lectures.html) by [Brent Yorgey](https://byorgey.wordpress.com/). We are also learning from other books:
- [Learn you a Haskell for great good](http://learnyouahaskell.com/)
- [Real world Haskell](http://book.realworldhaskell.org/read/)


Find and post your questions on [Reddit Haskell](https://www.reddit.com/r/haskell/), [Reddit Haskell Questions](https://www.reddit.com/r/haskellquestions) or on [Stackoverflow](http://stackoverflow.com/questions/tagged?tagnames=haskell)

For a more detail list of documentation you can have a look at the [Haskell website](https://www.haskell.org/documentation)

# Why

Because learning Haskell is cool!

# What is Haskell

Haskell is:
- Functional
- Pure
  - Immutable
  - No side effects
  - A same function with the same arguments will return the same outputs
- Lazy
- Typed

## Types

Haskell has the usual types : Bool, Int, Integer, Char, String. The Char type is represented with single quote 'C', the Sting type is represented with double quotes "myString". Haskell has also some more useful types:

- Pairs:
```haskell
p :: (Int, Char)
```
- List:
```haskell
l :: [Integer] -- a list is a head and a tail (x:xs)
```

### Alias type
You can use the keyword **type** to create an alias for a type.

```haskell
type St = String
f :: St -> St
```

### Algebraic Data Type

You can create a new type with the keyword **data**:

```haskell
data Tree = Empty | Leaf Int | Node Tree Tree
```

Here we create the **type constructor** Tree whith the following **data constructors**:

- Empty
- Leaf Int
- Node Tree Tree

Leaf and Node take parameters!
type constructor and data constructor must begin with a capital letter!

## Combining functions

You can combine functions:

```haskell
 myOtherFunc (myFirstFunc a)
 ```
 Two useful operators:

 . Which correspond to the mathematic composition. The result of the fist function become the input of the second function

```haskell
(myOtherFunc . myFirstFunc) a
```
 $ Replace parenthesis. Everything after $ will be executed before the things before the $ (everything after $ has a higher precedence)

```haskell
myOtherFunc $ myFirstFunc a
```
 Haskell load by default the Prelude module which contains a lot of useful functions

 You can find all the documentation of Haskell on Hoogle
