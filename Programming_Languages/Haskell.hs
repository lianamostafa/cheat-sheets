import Data.Char
import Data.List
import Test.QuickCheck
import Control.Monad (guard)

--Get the first/second item in a Tuple

first = fst(2,5)
second = snd(2,5)

--Checking if a string is a prefix of another string (case sensitive when used on its on)

prefix = isPrefixOf (map toLower xs) (map toLower ys)

--Checking if a string is in another string at some point

contains str substr = substr `isInfixOf` str

--Concatenating a list of strings into one whole string

concatList = concat["Hello ", "honey ", "I ", "am ", "home!"]

 --Remove the first element from a list
tailList = tail[1,2,3,4,5]

--Remove the last element from a list
initList = init[1,2,3,4,5]

--Get the first element of a list
headList = head[1,2,3,4,5]

--Select the nth element from the list
nList = [1,2,3,4,5] !! 2

--Select the first n elements of a list

takeN =  take 3 [1,2,3,4,5]

--Remove the first n elements from a list

dropN = drop 3 [1,2,3,4,5]

--Calculate the length of a list

lengthList = length [1,2,3,4,5]

--Calculate the sum of a list of numbers

sumList = sum[1,2,3,4,5]

--Product of a list

prodList = product [1,2,3,4,5]

--Append an element to the front of a list

consList = 1 : [2,3]

--Append 2 lists

appendList = [1,2,3] ++ [4,5]

--Reverse a list

reverseList = reverse [1,2,3,4,5]

--Remove duplicates in a list

dupFree = nub [0,1,2,3,2,1,0]

--Checking for the empty list

nullListTrue = null []

nullListFalse = null[1,2]

--Find the indices of all the occurences of an item in a list
--elemIndices 1 [1,2,3,4,5,6,1,3,4,5]

--Function Application

--f(a,b)  == f a b
--f(a) + b == f a + b
--f(x) == f x
--f(g(x)) == f(g x)
--f(x, g(y)) == f x (g y)
--f(x)g(y) == f x * g y
--f x y == x `f` y

--Spliting lists

--Ensure you import Data.List.Split

-- > splitOn "x" "axbxcx"
-- ["a","b","c",""]
--
-- > endBy ";" "foo;bar;baz;"
-- ["foo","bar","baz"]
--
-- > splitWhen (<0) [1,3,-4,5,7,-9,0,2]
-- [[1,3],[5,7],[0,2]]
--
-- > splitOneOf ";.," "foo,bar;baz.glurk"
-- ["foo","bar","baz","glurk"]
--
-- > chunksOf 3 ['a'..'z']
-- ["abc","def","ghi","jkl","mno","pqr","stu","vwx","yz"]

--Higher Order functions

--To apply a single function to a list of items
---- Use map i.e:-
------ g xs = [ f x | x <- xs ] == g xs = map f xs
------ doubles xs = [x*2| x <- xs] == doubles x = map (2*) x

--To remove items in a list which are outwith the provided criteria
---- Use filter i.e:-
------ g xs = [ x | x <- xs, p x ] == g xs = filter p xs

--When using map and filter together:-
---- In general, [f x | x <- xs, p x] is equivalent to
---- map f (filter p xs).

-- To compose two functions together to create a new function
---- Use . i.e.:-
------(.) :: (b -> c) -> (a -> b) -> (a -> c)
------(f . g) x = f (g x)

--Miscellaneous
--Error function
---- error "separator cannot be empty"

-- To replace normal function application and to help avoid parentheses.
---- Use $ i.e.-:-
------($) :: (a -> b) -> a -> b
------f $ x = f x

--To check the type of a function
---- :t functionName
